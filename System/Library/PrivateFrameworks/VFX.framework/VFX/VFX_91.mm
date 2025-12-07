id sub_1AF81B794(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1AFDFC048();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 options:a2 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_1AFDFC128();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_1AFDFBF58();

    swift_willThrow();
    v13 = sub_1AFDFC128();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t sub_1AF81B8E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF81B94C(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF81F62C(255, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF81B9D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

double sub_1AF81BA24(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v19, 0, 14);
      v7 = v19;
      v6 = v19;
      goto LABEL_19;
    }

    v8 = a3;
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = sub_1AFDFBDB8();
    if (v11)
    {
      v11 = v11 + v9 - sub_1AFDFBDE8();
    }

    v12 = v10 - v9;
  }

  else
  {
    if (!v5)
    {
      v19[0] = a1;
      LOWORD(v19[1]) = a2;
      BYTE2(v19[1]) = BYTE2(a2);
      BYTE3(v19[1]) = BYTE3(a2);
      BYTE4(v19[1]) = BYTE4(a2);
      BYTE5(v19[1]) = BYTE5(a2);
      v6 = v19 + BYTE6(a2);
      v7 = v19;
      goto LABEL_19;
    }

    v8 = a3;
    v14 = a1;
    v11 = sub_1AFDFBDB8();
    if (v11)
    {
      v11 = v11 + v14 - sub_1AFDFBDE8();
    }

    v12 = (a1 >> 32) - v14;
  }

  v15 = sub_1AFDFBDD8();
  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = (v16 + v11);
  if (v11)
  {
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v7 = v11;
  a3 = v8;
  a4 = v4;
LABEL_19:
  sub_1AF816C78(v7, v6, a3, a4);
  swift_unknownObjectRelease();
  return result;
}

unint64_t sub_1AF81BC00(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF81BC4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFCEC8();

  v3 = [v2 pathExtension];

  v4 = sub_1AFDFCEF8();
  v6 = v5;

  v7 = v4 == 1852797802 && v6 == 0xE400000000000000;
  if (v7 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v9 = v4 == 0x7473696C70 && v6 == 0xE500000000000000;
    if (v9 || (sub_1AFDFEE28() & 1) != 0)
    {

      return 1;
    }

    else if (v4 == 0x6E6962786676 && v6 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v10 = sub_1AFDFEE28();

      if (v10)
      {
        return 2;
      }

      else
      {
        return 5;
      }
    }
  }
}

uint64_t sub_1AF81BDA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  size[1] = *MEMORY[0x1E69E9840];
  v27 = a4 | (a3 > 3028);
  v6 = _dyld_image_count();
  if (!v6)
  {
LABEL_39:

    return 0;
  }

  v7 = v6;
  while (1)
  {
    image_header = _dyld_get_image_header(--v7);
    if (image_header)
    {
      v9 = image_header;
      size[0] = 0;
      v10 = sub_1AFDFCFB8();
      v11 = getsectiondata(v9, "__DATA_CONST", (v10 + 32), size);

      if (v11)
      {
        if (v27)
        {
          if (size[0] + 7 >= 0xF)
          {
            v12 = 8 * (size[0] / 8);
            while (1)
            {
              if (*v11 == 0x6D61676963766678 && *(v11 + 1))
              {
                v13 = *(v11 + 2);
                if (sub_1AFDFD0E8() == a1 && v14 == a2)
                {

                  return v13;
                }

                v16 = sub_1AFDFEE28();

                if (v16)
                {

                  return v13;
                }
              }

              v11 += 8;
              v12 -= 8;
              if (!v12)
              {
                goto LABEL_3;
              }
            }
          }

          goto LABEL_3;
        }

        v17 = sub_1AFDFCFB8();
        v18 = getsectbynamefromheader_64(v9, "__DATA_CONST", (v17 + 32));

        if (v18)
        {
          align = v18->align;
          v20 = 1 << align;
          if ((1 << align) <= 0x10)
          {
            v20 = 16;
          }

          if (align <= 0x3F)
          {
            v21 = v20;
          }

          else
          {
            v21 = 16;
          }
        }

        else
        {
          v21 = 16;
        }

        if ((size[0] & (v21 - 1)) != 0)
        {
          goto LABEL_39;
        }

        if (v21 <= size[0])
        {
          break;
        }
      }
    }

LABEL_3:
    if (!v7)
    {
      goto LABEL_39;
    }
  }

  v22 = size[0] / v21;
  while (1)
  {
    if (!*v11)
    {
      goto LABEL_28;
    }

    if (sub_1AFDFD0E8() == a1 && v23 == a2)
    {
      break;
    }

    v25 = sub_1AFDFEE28();

    if (v25)
    {
      goto LABEL_37;
    }

LABEL_28:
    v11 += v21;
    if (!--v22)
    {
      goto LABEL_3;
    }
  }

LABEL_37:

  return *(v11 + 1);
}

void sub_1AF81C078(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, unint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unint64_t a12, unsigned __int8 a13)
{
  v288 = a8;
  v289 = a7;
  v272 = a6;
  v275 = a5;
  v276 = a4;
  i = a3;
  v274 = a2;
  v278 = a1;
  LODWORD(v279) = a13;
  v13 = a9;
  v294 = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74(0);
  v286 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v285 = &v267[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v284 = sub_1AFDFC298();
  v271 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v283 = &v267[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1AFDFC318();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v267[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v281 = sub_1AFDFC128();
  v282 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281);
  v22 = &v267[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AF81B9D0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v267[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27.n128_f64[0] = MEMORY[0x1EEE9AC00](v26);
  v29 = &v267[-v28];
  LODWORD(v287) = a10;
  if ((a10 & 1) == 0 && a9 < 1041)
  {
    v30 = 0;
    v31 = 0;
    v32 = v277;
    goto LABEL_25;
  }

  v273 = a9;
  v33 = *(v282 + 48);
  if (!v276)
  {
    v47 = v275;
    if (v33(v275, 1, v281, v27) == 1 || (v270 = [objc_opt_self() defaultManager], sub_1AF456C4C(v47, v29), (v33)(v29, 1, v281), sub_1AFDFC0D8(), v269 = sub_1AFDFCEC8(), , (*(v282 + 8))(v29, v281), v48 = v270, v49 = v269, v268 = objc_msgSend(v270, sel_isReadableFileAtPath_, v269), v48, v49, !v268))
    {
      v30 = 0;
      v31 = 0;
      v32 = v277;
      v13 = v273;
      goto LABEL_25;
    }
  }

  LOBYTE(v292) = 0;
  v34 = v275;
  v35 = v281;
  if (v33(v275, 1, v281, v27) == 1)
  {
    sub_1AFDFC308();
    v36 = sub_1AFDFC2B8();
    v38 = v37;
    (*(v18 + 8))(v20, v17);
    v39 = NSTemporaryDirectory();
    if (!v39)
    {
      sub_1AFDFCEF8();
      v39 = sub_1AFDFCEC8();
    }

    *&v293 = v36;
    *(&v293 + 1) = v38;
    MEMORY[0x1B2718AE0](0x62696C79642ELL, 0xE600000000000000);
    v40 = sub_1AFDFCEC8();

    v41 = [(NSString *)v39 stringByAppendingPathComponent:v40];

    sub_1AFDFCEF8();
    sub_1AFDFC018();

    v42 = sub_1AFDFC048();
    *&v293 = 0;
    v43 = [v276 writeToURL:v42 options:0 originalContentsURL:0 error:&v293];

    v44 = v277;
    v13 = v273;
    v45 = v281;
    if (!v43)
    {
      v56 = v293;
      v52 = sub_1AFDFBF58();

      swift_willThrow();
      goto LABEL_18;
    }

    LOBYTE(v292) = 1;
    v46 = v293;
  }

  else
  {
    sub_1AF456C4C(v34, v25);
    (v33)(v25, 1, v35);
    (*(v282 + 32))(v22, v25, v35);
    v44 = v277;
    v13 = v273;
    v45 = v35;
  }

  v50 = sub_1AFDFC0D8();
  v51 = sub_1AF456AC0(v50);
  v32 = v44;
  if (!v44)
  {
    v53 = v51;
    type metadata accessor for CodeLoader();
    swift_allocObject();
    sub_1AF45207C();
    v54 = v45;
    v31 = v55;
    *(v55 + 80) = v53;
    v30 = 1;
    *(v55 + 72) = 1;

    sub_1AF81188C(&v292);
    (*(v282 + 8))(v22, v54);
    goto LABEL_25;
  }

  v52 = v44;
LABEL_18:
  v32 = 0;
  sub_1AF81188C(&v292);
  (*(v282 + 8))(v22, v45);
  *&v293 = 0;
  *(&v293 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF36580);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v57 = v293;
  if (v279)
  {
    sub_1AF4567E0();
    swift_allocError();
    *v58 = v57;
    *(v58 + 16) = 96;
    swift_willThrow();

    return;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v59 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v259 = v59;
    swift_once();
    v59 = v259;
  }

  *&v293 = 0;
  sub_1AF0D4F18(v59, &v293, v57, *(&v57 + 1));

  v31 = 0;
  v30 = 1;
LABEL_25:
  if (i)
  {
    v60 = sub_1AF456AC0(v274);
    if (v32)
    {
LABEL_181:

      return;
    }

    v61 = v60;
    type metadata accessor for CodeLoader();
    swift_allocObject();
    sub_1AF45207C();
    v63 = v62;
    *(v62 + 80) = v61;
    *(v62 + 72) = 1;

    v31 = v63;
  }

  type metadata accessor for ScriptTrampolineCodeGen();
  swift_initStackObject();
  v64 = v288;

  v66 = sub_1AFB0F318(v65, v289, v64);

  v275 = v66;
  v68 = v66[5];
  v67 = v66[6];
  if ((v287 & 1) == 0 && v13 <= 2000)
  {
    if (v13 > 1059)
    {
      *&v293 = 0;
      *(&v293 + 1) = 0xE000000000000000;

      sub_1AFDFE218();

      *&v293 = 0xD000000000000017;
      *(&v293 + 1) = 0x80000001AFF36410;
      MEMORY[0x1B2718AE0](v68, v67);
      v69 = *(&v293 + 1);
      v70 = v293;
    }

    else
    {
      v69 = 0x80000001AFF36560;

      v70 = 0xD000000000000012;
    }

    i = v70;
    if (v31)
    {
      v100 = *(v31 + 80);
      v101 = sub_1AFDFCFB8();

      v102 = dlsym(v100, (v101 + 32));

      if (v102)
      {
        v102(v103);

        goto LABEL_63;
      }

      LODWORD(v289) = v30;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v293 = 0;
      *(&v293 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      strcpy(&v293, "couldn't find ");
      HIBYTE(v293) = -18;
      MEMORY[0x1B2718AE0](i, v69);
      v133 = v293;
      v134 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v262 = v134;
        swift_once();
        v134 = v262;
      }

      *&v293 = 0;
      sub_1AF0D4F18(v134, &v293, v133, *(&v133 + 1));

      v30 = v289;
    }

    else
    {
      v104 = sub_1AFDFCFB8();
      v105 = sub_1AF38C664((v104 + 32));

      if (v105)
      {
        v105(v106);
LABEL_63:
        swift_getObjCClassMetadata();
        goto LABEL_64;
      }

      v143 = sub_1AFDFCFB8();
      v144 = objc_getClass((v143 + 32));

      if (v144)
      {
        sub_1AFDFDFB8();
        swift_unknownObjectRelease();
        sub_1AF449D40(&v293, &v292);
        sub_1AF81F45C();
        if (swift_dynamicCast())
        {
LABEL_64:
          sub_1AF0D4478(0, &qword_1EB633BB0, 0x1E69E58C0);
          if (swift_dynamicCastMetatype())
          {

            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v108 = [ObjCClassFromMetadata performSelector_];
            v109 = ObjCClassFromMetadata;
            if (v108)
            {
              swift_unknownObjectRetain();
              *&v293 = v108;
              sub_1AF81F3E4(0);
              if (swift_dynamicCast())
              {
                v273 = v13;
                v274 = v31;
                v110 = v292;
                sub_1AF442658();
                v111 = sub_1AFDFE598();
                v112 = 0;
                v113 = 1 << *(v110 + 32);
                v114 = -1;
                if (v113 < 64)
                {
                  v114 = ~(-1 << v113);
                }

                v115 = v114 & *(v110 + 64);
                v116 = (v113 + 63) >> 6;
                v276 = v111;
                for (i = v111 + 64; v115; v32 = v117)
                {
                  v117 = v32;
                  v118 = __clz(__rbit64(v115));
                  v115 &= v115 - 1;
                  v119 = v118 | (v112 << 6);
LABEL_75:
                  v123 = (*(v110 + 48) + 16 * v119);
                  v125 = *v123;
                  v124 = v123[1];
                  v126 = *(*(v110 + 56) + 8 * v119);

                  v127 = [v126 pointerValue];
                  *(i + ((v119 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v119;
                  v128 = v276;
                  v129 = (*(v276 + 6) + 16 * v119);
                  *v129 = v125;
                  v129[1] = v124;
                  *(v128[7] + 8 * v119) = v127;
                  ++v128[2];
                }

                v120 = v112 << 6;
                while (1)
                {
                  v121 = v112 + 1;
                  if (v112 + 1 >= v116)
                  {
                    break;
                  }

                  v122 = *(v110 + 8 * v112 + 72);
                  v120 += 64;
                  ++v112;
                  if (v122)
                  {
                    v117 = v32;
                    v115 = (v122 - 1) & v122;
                    v119 = __clz(__rbit64(v122)) + v120;
                    v112 = v121;
                    goto LABEL_75;
                  }
                }

                v79 = v276;
                goto LABEL_111;
              }
            }

            v130 = 0x80000001AFF36530;
            if (v279)
            {
              sub_1AF4567E0();
              swift_allocError();
              v132 = 0xD000000000000022;
LABEL_106:
              *v131 = v132;
LABEL_142:
              *(v131 + 8) = v130;
              *(v131 + 16) = 96;
              swift_willThrow();
LABEL_180:

              goto LABEL_181;
            }

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v135 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v263 = v135;
              swift_once();
              v135 = v263;
            }

            *&v293 = 0;
            v136 = 0xD000000000000022;
LABEL_178:
            v137 = v130;
LABEL_179:
            sub_1AF0D4F18(v135, &v293, v136, v137);
            goto LABEL_180;
          }
        }
      }

      else
      {
        strcpy(&v293, "VFXAssets.");
        BYTE11(v293) = 0;
        HIDWORD(v293) = -369098752;
        MEMORY[0x1B2718AE0](v68, v67);
        v241 = sub_1AFDFCEC8();

        v242 = NSClassFromString(v241);

        if (v242)
        {
          goto LABEL_63;
        }

        *&v293 = 0x2E6E69616DLL;
        *(&v293 + 1) = 0xE500000000000000;
        MEMORY[0x1B2718AE0](v68, v67);
        v243 = sub_1AFDFCEC8();

        v244 = NSClassFromString(v243);

        if (v244)
        {
          goto LABEL_63;
        }

        v245 = [objc_opt_self() mainBundle];
        v246 = [v245 bundleIdentifier];

        if (v246)
        {
          v277 = v69;
          v247 = sub_1AFDFCEF8();
          v249 = v248;

          *&v293 = v247;
          *(&v293 + 1) = v249;
          *&v292 = 46;
          *(&v292 + 1) = 0xE100000000000000;
          sub_1AF4486E4();
          v250 = sub_1AFDFDE98();

          v251 = *(v250 + 16);
          if (v251)
          {
            v252 = (v250 + 16 + 16 * v251);
            v254 = *v252;
            v253 = v252[1];

            *&v293 = v254;
            *(&v293 + 1) = v253;
            MEMORY[0x1B2718AE0](46, 0xE100000000000000);
            MEMORY[0x1B2718AE0](v68, v67);
            v255 = sub_1AFDFCEC8();

            v256 = NSClassFromString(v255);

            v69 = v277;
            if (v256)
            {
              goto LABEL_63;
            }
          }

          else
          {

            v69 = v277;
          }
        }

        strcpy(&v293, "VFXCoreTests.");
        HIWORD(v293) = -4864;
        MEMORY[0x1B2718AE0](v68, v67);
        v257 = sub_1AFDFCEC8();

        v258 = NSClassFromString(v257);

        if (v258)
        {
          goto LABEL_63;
        }
      }
    }

    if (v13 <= 1008)
    {

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v135 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v261 = v135;
        swift_once();
        v135 = v261;
      }

      *&v293 = 0;
      v136 = 0xD000000000000032;
      v137 = 0x80000001AFF364D0;
      goto LABEL_179;
    }

    if (!v30)
    {
      *&v293 = 0;
      *(&v293 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00207373616C63);
      MEMORY[0x1B2718AE0](v68, v67);

      MEMORY[0x1B2718AE0](0x626D797320726F20, 0xEB00000000206C6FLL);
      MEMORY[0x1B2718AE0](i, v69);

      v141 = "__vfx_get_effect_class_";
      v142 = 0xD00000000000009FLL;
      goto LABEL_133;
    }

    *&v293 = 0;
    *(&v293 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF36320);
    MEMORY[0x1B2718AE0](i, v69);
LABEL_98:

    v141 = "missing symbol: ";
    v142 = 0xD000000000000090;
LABEL_133:
    MEMORY[0x1B2718AE0](v142, v141 | 0x8000000000000000);
LABEL_140:
    v130 = *(&v293 + 1);
    v216 = v293;
    if ((v279 & 1) == 0)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v217 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v260 = v217;
        swift_once();
        v217 = v260;
      }

      *&v293 = 0;
      sub_1AF0D4F18(v217, &v293, v216, v130);

      goto LABEL_181;
    }

    sub_1AF4567E0();
    swift_allocError();
    *v131 = v216;
    goto LABEL_142;
  }

  *&v293 = 0;
  *(&v293 + 1) = 0xE000000000000000;
  sub_1AFDFE218();

  *&v293 = 0xD000000000000017;
  *(&v293 + 1) = 0x80000001AFF362E0;
  MEMORY[0x1B2718AE0](v68, v67);
  v71 = v293;
  if ((v287 & 1) != 0 || v13 > 2042)
  {
    v77 = *(v275 + 40);
    v78 = *(v275 + 48);

    v76 = sub_1AF81BDA4(v77, v78, v13, v287 & 1);

    if (v76)
    {
      goto LABEL_39;
    }

    goto LABEL_94;
  }

  if (!v31)
  {
    v138 = sub_1AFDFCFB8();
    v139 = sub_1AF38C664((v138 + 32));

    if (!v139)
    {
      goto LABEL_96;
    }

    v76 = v139(v140);
    if (v76)
    {
      goto LABEL_39;
    }

LABEL_94:
    if ((v287 & 1) != 0 || v13 > 2043)
    {

      v130 = 0x80000001AFF36300;
      if (v279)
      {
        sub_1AF4567E0();
        swift_allocError();
        v132 = 0xD00000000000001CLL;
        goto LABEL_106;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v135 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v265 = v135;
        swift_once();
        v135 = v265;
      }

      *&v293 = 0;
      v136 = 0xD00000000000001CLL;
      goto LABEL_178;
    }

LABEL_96:
    if (v30)
    {
LABEL_97:
      *&v293 = 0;
      *(&v293 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF36320);
      MEMORY[0x1B2718AE0](v71, *(&v71 + 1));
      goto LABEL_98;
    }

LABEL_139:
    *&v293 = 0;
    *(&v293 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v293 = 0xD000000000000010;
    *(&v293 + 1) = 0x80000001AFF36320;
    MEMORY[0x1B2718AE0](v71, *(&v71 + 1));

    goto LABEL_140;
  }

  v72 = *(v31 + 80);
  v73 = sub_1AFDFCFB8();

  v74 = dlsym(v72, (v73 + 32));

  if (!v74)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v293 = 0;
    *(&v293 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    strcpy(&v293, "couldn't find ");
    HIBYTE(v293) = -18;
    MEMORY[0x1B2718AE0](v71, *(&v71 + 1));
    v214 = v293;
    v215 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v264 = v215;
      swift_once();
      v215 = v264;
    }

    *&v293 = 0;
    sub_1AF0D4F18(v215, &v293, v214, *(&v214 + 1));

    if (v30)
    {
      goto LABEL_97;
    }

    goto LABEL_139;
  }

  v76 = v74(v75);

  if (!v76)
  {
    goto LABEL_94;
  }

LABEL_39:
  v273 = v13;
  v274 = v31;

  v79 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
  if (*v76)
  {
    v80 = v76 + 2;
    while (1)
    {
      v83 = *(v80 - 1);
      v84 = sub_1AFDFD0E8();
      v86 = v84;
      v87 = v85;
      if (!v83)
      {
        v94 = sub_1AF419914(v84, v85);
        v96 = v95;

        if (v96)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v293 = v79;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1AF84C7A0();
            v79 = v293;
          }

          sub_1AF6B234C(v94, v79);
        }

        goto LABEL_42;
      }

      v88 = swift_isUniquelyReferenced_nonNull_native();
      *&v293 = v79;
      v89 = sub_1AF419914(v86, v87);
      v91 = v90;
      v92 = v79[2] + ((v90 & 1) == 0);
      if (v79[3] < v92)
      {
        break;
      }

      if (v88)
      {
        goto LABEL_52;
      }

      v99 = v89;
      sub_1AF84C7A0();
      v89 = v99;
      if ((v91 & 1) == 0)
      {
LABEL_53:
        v79 = v293;
        *(v293 + 8 * (v89 >> 6) + 64) |= 1 << v89;
        v98 = (v79[6] + 16 * v89);
        *v98 = v86;
        v98[1] = v87;
        *(v79[7] + 8 * v89) = v83;
        ++v79[2];
        goto LABEL_42;
      }

LABEL_41:
      v81 = v89;

      v79 = v293;
      *(*(v293 + 56) + 8 * v81) = v83;
LABEL_42:
      v82 = *v80;
      v80 += 2;
      if (!v82)
      {
        goto LABEL_111;
      }
    }

    sub_1AF83B5C8(v92, v88);
    v89 = sub_1AF419914(v86, v87);
    if ((v91 & 1) != (v93 & 1))
    {
      sub_1AFDFF1A8();
      __break(1u);
      return;
    }

LABEL_52:
    if ((v91 & 1) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_41;
  }

LABEL_111:
  v276 = v79;
  v145 = v272;
  if (v272)
  {
    type metadata accessor for MetalAPICodeLoader(0);
    v146 = swift_allocObject();
    (*(v282 + 56))(v146 + OBJC_IVAR____TtC3VFXP33_C4E2DBBBFC07D2822B3288C0270C06A818MetalAPICodeLoader_sourceURL, 1, 1, v281);
    sub_1AF45207C();
    v148 = v147;
    *(v147 + 88) = v145;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v148 + 48) = CFXMTLCreateSystemDefaultDevice();
    swift_unknownObjectRelease();
    v149 = v278;
    v150 = *(v278 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    v151 = *(v148 + 64);
    *(v148 + 56) = *(v278 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
    v270 = v148;
    *(v148 + 64) = v150;
    v152 = v150;
  }

  else
  {
    v270 = 0;
    v149 = v278;
  }

  v272 = sub_1AF8119B8(v149, v289, v288, v279 & 1);

  v153 = sub_1AFCDABE4();

  v277 = v32;
  if (!v153)
  {
    type metadata accessor for ScriptCompilerSystem();
    swift_allocObject();
    v153 = sub_1AFA5C588(v154);
  }

  v282 = HIDWORD(a12) & 1;
  v155 = MEMORY[0x1E69E7CD0];
  *(v153 + 16) = v149;
  v291 = v155;
  LOBYTE(v293) = BYTE4(a12) & 1;
  i = a12;
  v156 = v287;
  v157 = v153;
  v158 = v288;
  v281 = a11;
  v159 = v273;
  v160 = v274;
  v161 = v270;
  sub_1AF81A254(v289, v288, v273, v287 & 1, v274, v272, v270, v276, a11, &v291, a12 | ((BYTE4(a12) & 1) << 32), sub_1AF70335C, sub_1AF5B24F0, sub_1AF5C5E08, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, sub_1AF5C5E08, sub_1AF8D6420, sub_1AF703884, sub_1AF6FCB70, sub_1AFD2411C, sub_1AF81FD74, sub_1AF81FDB0, sub_1AFD36A60, sub_1AFD38228);
  LOBYTE(v293) = v282;
  v162 = v282;
  v163 = v289;
  v164 = v160;
  v165 = v160;
  v166 = v272;
  sub_1AF81A254(v289, v158, v159, v156 & 1, v165, v272, v161, v276, a11, &v291, a12 | (v282 << 32), sub_1AF70471C, sub_1AF5B2478, sub_1AF5C5E08, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, sub_1AF5C5E08, sub_1AF8D6198, sub_1AF7044D4, sub_1AF6FCB34, sub_1AFD23C24, sub_1AF81FC5C, sub_1AF81FC98, sub_1AFD38328, sub_1AFD39AF0);
  LOBYTE(v293) = v162;
  v167 = i;
  v168 = i | (v162 << 32);
  v169 = v156 & 1;
  v170 = v156;
  v171 = v281;
  v172 = v163;
  v173 = v158;
  v174 = v164;
  v274 = v164;
  v175 = v164;
  v176 = v270;
  v177 = v276;
  sub_1AF8177CC(v172, v173, v159, v169, v175, v166, v270, v276, v281, &v291, v168);
  LOBYTE(v293) = v282;
  v178 = v170 & 1;
  v179 = v288;
  sub_1AF818CCC(v289, v288, v159, v178, v174, v166, v176, v177, v171, &v291, v167 | (v282 << 32));
  LOBYTE(v293) = v282;
  v266 = v167 | (v282 << 32);
  LOBYTE(v177) = v287;
  v180 = v289;
  v181 = v179;
  v182 = v179;
  v183 = v159;
  v184 = v159;
  v185 = v274;
  v186 = v272;
  sub_1AF81A254(v289, v182, v184, v287 & 1, v274, v272, v176, v276, v171, &v291, v266, sub_1AF704984, sub_1AF5B2568, sub_1AF5C5E08, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, sub_1AF5C5E08, sub_1AF8D5A00, sub_1AF70473C, sub_1AF6FCABC, sub_1AFD2372C, sub_1AF81F8AC, sub_1AF81F8E8, sub_1AFD43440, sub_1AFD44C10);
  LOBYTE(v293) = v282;
  v187 = v185;
  v188 = v186;
  v189 = v186;
  v190 = v176;
  v191 = v176;
  v192 = v276;
  sub_1AF81A254(v180, v181, v183, v177 & 1, v187, v188, v190, v276, v171, &v291, i | (v282 << 32), sub_1AF703D7C, sub_1AF5B2310, sub_1AF5C5E08, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, sub_1AF5C5E08, sub_1AF8D5778, sub_1AF7033F4, sub_1AF6FCA80, sub_1AFD23234, sub_1AF81F794, sub_1AF81F7D0, sub_1AFD4744C, sub_1AFD48C2C);
  LOBYTE(v293) = v282;
  v193 = i;
  v194 = v181;
  v195 = v274;
  sub_1AF81A254(v180, v194, v183, v177 & 1, v274, v189, v191, v192, v281, &v291, i | (v282 << 32), sub_1AF703D5C, sub_1AF5B2298, sub_1AF5C5E08, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, sub_1AF5C5E08, sub_1AF8D54F0, sub_1AF70363C, sub_1AF6FCA44, sub_1AFD22D3C, sub_1AF81F67C, sub_1AF81F6B8, sub_1AFD4B488, sub_1AFD4CC70);
  LOBYTE(v293) = v282;
  v196 = v192;
  v273 = v157;
  sub_1AF81A254(v180, v288, v183, v177 & 1, v195, v272, v191, v192, v281, &v291, v193 | (v282 << 32), sub_1AF703D3C, sub_1AF5B2220, sub_1AF5C5E08, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, sub_1AF5C44B0, sub_1AF8D5268, sub_1AF703AF4, sub_1AF6FCA08, sub_1AFD22844, sub_1AF81F514, sub_1AF81F550, sub_1AFD4F4D4, sub_1AFD50CA4);
  if (v191)
  {
    v197 = *(v191 + 88);
    v198 = v277;
    if (v197)
    {
      v199 = [v197 functionNames];
      v200 = sub_1AFDFD418();

      v201 = *(v200 + 16);
      v287 = v200;
      if (v201)
      {
        v202 = 0;
        v203 = v200 + 40;
        v204 = -v201;
        v205 = MEMORY[0x1E69E7CC0];
        v282 = v200 + 40;
        do
        {
          v206 = (v203 + 16 * v202++);
          while (1)
          {
            v207 = *(v206 - 1);
            v208 = *v206;
            *&v293 = v207;
            *(&v293 + 1) = v208;
            *&v292 = v289;
            *(&v292 + 1) = v288;

            MEMORY[0x1B2718AE0](95, 0xE100000000000000);
            sub_1AF4486E4();
            v209 = sub_1AFDFDF18();

            if (v209)
            {
              break;
            }

            v206 += 2;
            ++v202;
            if (v204 + v202 == 1)
            {
              goto LABEL_149;
            }
          }

          v210 = swift_isUniquelyReferenced_nonNull_native();
          v290 = v205;
          if ((v210 & 1) == 0)
          {
            sub_1AFC05CE4(0, *(v205 + 16) + 1, 1);
            v205 = v290;
          }

          v212 = *(v205 + 16);
          v211 = *(v205 + 24);
          if (v212 >= v211 >> 1)
          {
            sub_1AFC05CE4(v211 > 1, v212 + 1, 1);
            v205 = v290;
          }

          *(v205 + 16) = v212 + 1;
          v213 = v205 + 16 * v212;
          *(v213 + 32) = v207;
          *(v213 + 40) = v208;
          v203 = v282;
        }

        while (v204 + v202);
      }

      else
      {
        v205 = MEMORY[0x1E69E7CC0];
      }

LABEL_149:

      v198 = v277;
      v196 = v276;
    }

    else
    {
      v205 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v205 = MEMORY[0x1E69E7CC0];
    v198 = v277;
  }

  v218 = v196[2] + *(v205 + 16);
  *&v293 = sub_1AF420554(0, v218 & ~(v218 >> 63), 0, MEMORY[0x1E69E7CC0]);

  sub_1AF490474(v219);
  sub_1AF48FAF8(v205);
  v288 = *(v293 + 16);
  if (v288)
  {
    v277 = v198;
    v220 = 0;
    v269 = v293;
    v287 = v293 + 32;
    v221 = v291;
    v222 = v291 + 56;
    v281 = 0x80000001AFF363E0;
    i = v271 + 32;
    v279 = xmmword_1AFE431C0;
    v282 = v291 + 56;
    v278 = v291;
    do
    {
      v223 = (v287 + 16 * v220);
      v225 = *v223;
      v224 = v223[1];
      if (*(v221 + 16))
      {
        sub_1AFDFF288();

        sub_1AFDFD038();
        v226 = sub_1AFDFF2F8();
        v227 = -1 << *(v221 + 32);
        v228 = v226 & ~v227;
        if ((*(v222 + ((v228 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v228))
        {
          v229 = ~v227;
          while (1)
          {
            v230 = (*(v221 + 48) + 16 * v228);
            v231 = *v230 == v225 && v230[1] == v224;
            if (v231 || (sub_1AFDFEE28() & 1) != 0)
            {
              break;
            }

            v228 = (v228 + 1) & v229;
            if (((*(v222 + ((v228 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v228) & 1) == 0)
            {
              goto LABEL_165;
            }
          }

          goto LABEL_153;
        }
      }

      else
      {
      }

LABEL_165:
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v293 = 0;
      *(&v293 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v293 = 0xD000000000000020;
      *(&v293 + 1) = v281;
      MEMORY[0x1B2718AE0](v225, v224);

      v232 = v293;
      v233 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v289 = v220;
      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      v234 = qword_1ED73B890;
      sub_1AF5FD6BC(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v235 = swift_allocObject();
      *(v235 + 16) = v279;
      *(v235 + 56) = MEMORY[0x1E69E6158];
      *(v235 + 64) = sub_1AF0D544C();
      *(v235 + 32) = v232;

      sub_1AFDFC4C8(v233, &dword_1AF0CE000, v234, "%{public}s", 10, 2, v235);

      v236 = v283;
      sub_1AFDFC288();
      v237 = v286[12];
      v238 = v286[16];
      v239 = v285;
      v240 = &v285[v286[20]];
      (*i)(v285, v236, v284);
      *(v239 + v237) = v233;
      *(v239 + v238) = 0;
      *v240 = v232;
      sub_1AFDFC608();

      sub_1AF81F384(v239, sub_1AF0D4E74);
      v222 = v282;
      v221 = v278;
      v220 = v289;
LABEL_153:
      v220 = (v220 + 1);
    }

    while (v220 != v288);
  }
}

uint64_t sub_1AF81EBE8(uint64_t a1, void *a2)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6969770];
  sub_1AF81B9D0(0, &unk_1ED72DF20, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v29 - v5;
  v30[0] = sub_1AFDFC0D8();
  v30[1] = v7;
  v29[1] = 0x617262696C786676;
  v29[2] = 0xEA00000000007972;
  v8 = sub_1AFDFC328();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_1AF4486E4();
  sub_1AFDFDEF8();
  v10 = v9;
  sub_1AF81FE8C(v6, &unk_1ED72DF20, v3);
  if (v10)
  {

    return 0;
  }

  v11 = sub_1AFDFD1F8();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  MEMORY[0x1B27189E0](v11, v13, v15, v17);

  v18 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v19 = sub_1AFDFCEC8();

  v20 = [v18 initWithPath_];

  if (!v20)
  {
    return 0;
  }

  v21 = [v20 executablePath];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1AFDFCEF8();

    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v23 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v30[0] = 0;
  v24 = [a2 newDefaultLibraryWithBundle:v20 error:v30];
  v25 = v30[0];
  if (!v24)
  {
    v27 = v25;
    v28 = sub_1AFDFBF58();

    swift_willThrow();
    return v23;
  }

LABEL_7:

  return v23;
}

uint64_t sub_1AF81EEE0(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_1AFDFC128();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  v10 = [objc_opt_self() defaultManager];
  sub_1AFDFC028();
  v11 = sub_1AFDFCEC8();

  v12 = [v11 stringByDeletingPathExtension];

  v13 = sub_1AFDFCEF8();
  v15 = v14;

  sub_1AFDFC098();
  v27[2] = v13;
  v27[3] = v15;
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  v16 = 0xE500000000000000;
  v17 = 0x7466697773;
  if (a2 != 3)
  {
    v17 = 29546;
    v16 = 0xE200000000000000;
  }

  if (a2 == 2)
  {
    v17 = 0x6C6174656DLL;
    v16 = 0xE500000000000000;
  }

  v18 = 0xE300000000000000;
  v19 = 7368803;
  if (a2)
  {
    v19 = 28013;
    v18 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  if (a2 <= 1u)
  {
    v21 = v18;
  }

  else
  {
    v21 = v16;
  }

  MEMORY[0x1B2718AE0](v20, v21);

  sub_1AFDFC088();

  v22 = *(v4 + 8);
  v22(v6, v3);
  sub_1AFDFC0D8();
  v23 = sub_1AFDFCEC8();

  v24 = [v10 isReadableFileAtPath_];

  if (v24)
  {
    v25 = sub_1AFDFCEA8();
    v22(v9, v3);

    return v25;
  }

  else
  {
    v22(v9, v3);

    return 0;
  }
}

void *sub_1AF81F1BC(uint64_t a1, uint64_t a2)
{
  sub_1AF4493DC(0);
  v3 = sub_1AFDFE598();
  v4 = v3;
  v5 = 0;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = v3 + 64;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v5 << 6);
LABEL_11:
    v16 = *(*(a1 + 48) + 8 * v12);
    v17 = 0xFFFFFFFFLL;
    if (*(a2 + 16))
    {
      v18 = sub_1AF449D3C(*(*(a1 + 56) + 8 * v12));
      if (v19)
      {
        v17 = *(*(a2 + 56) + 8 * v18);
      }
    }

    *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    *(v4[6] + 8 * v12) = v16;
    *(v4[7] + 8 * v12) = v17;
    ++v4[2];
  }

  v13 = v5 << 6;
  while (1)
  {
    v14 = v5 + 1;
    if (v5 + 1 >= v9)
    {
      return v4;
    }

    v15 = *(a1 + 72 + 8 * v5);
    v13 += 64;
    ++v5;
    if (v15)
    {
      v8 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) + v13;
      v5 = v14;
      goto LABEL_11;
    }
  }
}

unint64_t sub_1AF81F330()
{
  result = qword_1EB632FF0;
  if (!qword_1EB632FF0)
  {
    result = swift_getWitnessTable("\r*", &type metadata for ScriptError, v0, v1);
    atomic_store(result, &qword_1EB632FF0);
  }

  return result;
}

uint64_t sub_1AF81F384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF81F3E4(uint64_t a1)
{
  if (!qword_1EB63F250)
  {
    sub_1AF0D4478(255, &qword_1EB632950, 0x1E696B098);
    v1 = sub_1AFDFCCB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63F250);
    }
  }
}

unint64_t sub_1AF81F45C()
{
  result = qword_1EB63F258;
  if (!qword_1EB63F258)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EB63F258);
  }

  return result;
}

void sub_1AF81F4A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AF81F550(uint64_t a1)
{
  if (!qword_1ED7239B0)
  {
    v2 = type metadata accessor for TriggerScript(255);
    sub_1AF5B2220(255);
    v4 = v3;
    sub_1AF81F4A8(255, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
    v8[0] = v2;
    v8[1] = v4;
    v8[2] = v5;
    v8[3] = &off_1F255BBC8;
    v8[4] = &off_1F2558F90;
    v8[5] = &off_1F250F310;
    v6 = type metadata accessor for Query3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, &qword_1ED7239B0);
    }
  }
}

void sub_1AF81F62C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AF81F6B8(uint64_t a1)
{
  if (!qword_1ED723970)
  {
    updated = type metadata accessor for ParticleUpdateScript(255);
    sub_1AF5B2298(255);
    v4 = v3;
    sub_1AF81F4A8(255, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
    v8[0] = updated;
    v8[1] = v4;
    v8[2] = v5;
    v8[3] = &off_1F255BAD0;
    v8[4] = &off_1F2558F90;
    v8[5] = &off_1F250F310;
    v6 = type metadata accessor for Query3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, &qword_1ED723970);
    }
  }
}

void sub_1AF81F7D0(uint64_t a1)
{
  if (!qword_1ED723980)
  {
    inited = type metadata accessor for ParticleInitScript(255);
    sub_1AF5B2310(255);
    v4 = v3;
    sub_1AF81F4A8(255, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
    v8[0] = inited;
    v8[1] = v4;
    v8[2] = v5;
    v8[3] = &off_1F255B9C0;
    v8[4] = &off_1F2558F90;
    v8[5] = &off_1F250F310;
    v6 = type metadata accessor for Query3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, &qword_1ED723980);
    }
  }
}

void sub_1AF81F8E8(uint64_t a1)
{
  if (!qword_1ED7239B8)
  {
    v2 = type metadata accessor for EmitterScript(255);
    sub_1AF5B2568(255);
    v4 = v3;
    sub_1AF81F4A8(255, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
    v8[0] = v2;
    v8[1] = v4;
    v8[2] = v5;
    v8[3] = &off_1F255B720;
    v8[4] = &off_1F2558F90;
    v8[5] = &off_1F250F310;
    v6 = type metadata accessor for Query3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, &qword_1ED7239B8);
    }
  }
}

void sub_1AF81FA00(uint64_t a1)
{
  if (!qword_1ED7239C8)
  {
    v2 = type metadata accessor for ShaderScript(255);
    sub_1AF81F4A8(255, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
    v4 = v3;
    sub_1AF81F4A8(255, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
    v8[0] = v2;
    v8[1] = v4;
    v8[2] = v5;
    v8[3] = &off_1F255B8D0;
    v8[4] = &off_1F2558F90;
    v8[5] = &off_1F250F310;
    v6 = type metadata accessor for Query3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, &qword_1ED7239C8);
    }
  }
}

void sub_1AF81FB4C(uint64_t a1)
{
  if (!qword_1ED723978)
  {
    v2 = type metadata accessor for MetalFunctionScript(255);
    sub_1AF81F4A8(255, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
    v4 = v3;
    sub_1AF81F4A8(255, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
    v8[0] = v2;
    v8[1] = v4;
    v8[2] = v5;
    v8[3] = &off_1F255B630;
    v8[4] = &off_1F2558F90;
    v8[5] = &off_1F250F310;
    v6 = type metadata accessor for Query3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, &qword_1ED723978);
    }
  }
}

void sub_1AF81FC98(uint64_t a1)
{
  if (!qword_1ED7239C0)
  {
    v2 = type metadata accessor for SimpleScript(255);
    sub_1AF5B2478(255);
    v4 = v3;
    sub_1AF81F4A8(255, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
    v8[0] = v2;
    v8[1] = v4;
    v8[2] = v5;
    v8[3] = &off_1F255B808;
    v8[4] = &off_1F2558F90;
    v8[5] = &off_1F250F310;
    v6 = type metadata accessor for Query3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, &qword_1ED7239C0);
    }
  }
}

void sub_1AF81FDB0(uint64_t a1)
{
  if (!qword_1ED7239D0)
  {
    v2 = type metadata accessor for GraphScript(255);
    sub_1AF5B24F0(255);
    v4 = v3;
    sub_1AF81F4A8(255, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
    v8[0] = v2;
    v8[1] = v4;
    v8[2] = v5;
    v8[3] = &off_1F255B548;
    v8[4] = &off_1F2558F90;
    v8[5] = &off_1F250F310;
    v6 = type metadata accessor for Query3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, &qword_1ED7239D0);
    }
  }
}

uint64_t sub_1AF81FE8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AF81B9D0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF81FEE8()
{
  result = qword_1ED72A8D0;
  if (!qword_1ED72A8D0)
  {
    result = swift_getWitnessTable(byte_1AFE6DFFC, &type metadata for EntityManagerCoder, v0, v1);
    atomic_store(result, &qword_1ED72A8D0);
  }

  return result;
}

uint64_t sub_1AF81FF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AF81FFA0(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(type metadata accessor for BundleInfo(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = (v9 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_1AFDFC128() - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1AF814300(a1, a2, a3, (v3 + v8), *(v3 + v10) | (*(v3 + v10 + 4) << 32), *(v3 + v11), v3 + v13, *(v3 + v14), *(v3 + v14 + 8), *(v3 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1AF820124(uint64_t a1)
{
  sub_1AF8201AC(0, &unk_1ED723D78, &type metadata for VirtualFileAsset, &off_1F2545DB8, type metadata accessor for Query1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF8201AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AF820200(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1AF82025C()
{
  result = qword_1EB63F260;
  if (!qword_1EB63F260)
  {
    result = swift_getWitnessTable(byte_1AFE79E6C, &type metadata for BundleInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F260);
  }

  return result;
}

unint64_t sub_1AF8202B4()
{
  result = qword_1ED72DF08;
  if (!qword_1ED72DF08)
  {
    result = swift_getWitnessTable(aM_35, &type metadata for BundleInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED72DF08);
  }

  return result;
}

unint64_t sub_1AF82030C()
{
  result = qword_1ED72DF10;
  if (!qword_1ED72DF10)
  {
    result = swift_getWitnessTable(aE_41, &type metadata for BundleInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED72DF10);
  }

  return result;
}

void *sub_1AF820374(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 8);

  v8 = sub_1AF67CACC(a1, v7, a3);

  if (!v8)
  {
    return 0;
  }

  type metadata accessor for VFXAttribute();
  v9 = swift_allocObject();

  swift_unownedRetain();

  result = v9;
  v9[2] = a4;
  v9[3] = a3;
  v9[4] = a1;
  v9[5] = v7;
  return result;
}

uint64_t sub_1AF82041C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(v9, v9[3]);
  v5 = sub_1AFDFEE38();
  v7 = v6;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t sub_1AF8204F4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];

    v16[0] = a1;
    v16[1] = a2;
    v9 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v9)
    {
      v10 = *(v9 + 80);
      swift_unknownObjectWeakLoadStrong();
      v9 = *(v9 + 56);
    }

    else
    {
      v10 = 0;
    }

    swift_unknownObjectUnownedInit();
    v17[0] = a4;
    v18 = v9;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v19 = v10;
    sub_1AF820744(v17, v16, a3);
    sub_1AF579490(v17);
    if (v10)
    {
      v13 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v13 ^ 1);
    }
  }

  else
  {
    v11 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v11)
    {
      v12 = *(v11 + 80);
      swift_unknownObjectWeakLoadStrong();
      v11 = *(v11 + 56);
    }

    else
    {
      v12 = 0;
    }

    swift_unknownObjectUnownedInit();
    v17[0] = a4;
    v18 = v11;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v19 = v12;
    sub_1AF6C150C(&type metadata for VFXTag, &off_1F253D538, a3);
    sub_1AF579490(v17);
    if (v12)
    {
      v14 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v14 ^ 1);
    }
  }
}

void *sub_1AF820744(void *result, uint64_t *a2, unint64_t a3)
{
  v4 = result;
  v5 = HIDWORD(a3);
  v7 = *a2;
  v6 = a2[1];
  if (HIDWORD(a3) || a3 != -1)
  {
    v8 = *result;
    swift_unownedRetainStrong();
    v9 = sub_1AF67CACC(&type metadata for VFXTag, &off_1F253D558, a3);

    swift_unownedRetainStrong();
    sub_1AFBFE5A4(v7, v6, a3);

    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v11[0] = __PAIR64__(v5, a3);
      v11[1] = v8;
      sub_1AF822C58(0, &qword_1EB63F278, type metadata accessor for ComponentWriter);
      v13 = v10;
      v14 = &off_1F2536170;
      v11[2] = v7;
      v11[3] = v6;
      v12 = !v9;
      v15 = 12;
      sub_1AF6C67D0(v11);

      return sub_1AF57955C(v11);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF8208B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1AF823D1C(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v7 = sub_1AFDFC318();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for VFXObjectTag(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFC308();
  v16 = a1[3];
  v17 = a1[4];
  sub_1AF441150(a1, v16);
  if (sub_1AF694FF8(2000, v16, v17))
  {
    sub_1AF441150(a1, a1[3]);
    v18 = v28;
    sub_1AFDFF398();
    if (!v18)
    {
      sub_1AF441150(&v24, v27);
      sub_1AF823984(&qword_1ED72DF38, MEMORY[0x1E69695D0]);
      sub_1AFDFEE88();
      (*(v21 + 40))(v15, v12, v7);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v24);
LABEL_6:
      sub_1AF823920(v15, v22);
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF445B90();
    v19 = v28;
    sub_1AFDFF3B8();
    if (!v19)
    {
      v24 = 0;
      v25 = 1;
      v26 = 6580597;
      v27 = 0xE300000000000000;
      sub_1AF823984(&qword_1ED72DF38, MEMORY[0x1E69695D0]);
      sub_1AFDFE768();
      (*(v23 + 8))(v6, v4);
      (*(v21 + 40))(v15, v9, v7);
      goto LABEL_6;
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AF8238C4(v15);
}

uint64_t sub_1AF820CC0(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v2[3]);
  sub_1AFDFC318();
  sub_1AF823984(&qword_1EB639808, MEMORY[0x1E69695B0]);
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AF820D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  result = (*(a2 + 32))(ObjectType, a2);
  if (result)
  {
    (*(a2 + 24))(v2, 0x63656A624F584656, 0xEC00000067615474, sub_1AF8208AC, 0, ObjectType, a2);
    return (*(v5 + 40))(v2, v7, v4);
  }

  return result;
}

uint64_t sub_1AF820EE0(uint64_t a1)
{
  v2 = sub_1AF823870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF820F1C(uint64_t a1)
{
  v2 = sub_1AF823870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF820FA8(uint64_t a1)
{
  v2 = sub_1AF82381C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF820FE4(uint64_t a1)
{
  v2 = sub_1AF82381C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF821070(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void))
{
  sub_1AF823D1C(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1AF8211AC(void *a1, uint64_t a2)
{
  sub_1AF823D1C(0, &qword_1EB63F298, sub_1AF8237C8, &type metadata for VFXParentAsset.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8237C8();
  sub_1AFDFF3F8();
  v10[1] = a2;
  sub_1AF480018();
  sub_1AFDFE918();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AF821338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF8213BC(uint64_t a1)
{
  v2 = sub_1AF8237C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8213F8(uint64_t a1)
{
  v2 = sub_1AF8237C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AF821434@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF82360C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AF82147C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = *(a2 + 8);
  v5(v2, 0, ObjectType, a2);
  result = v5(v2 + 8, 1, ObjectType, a2);
  v7 = *(v2 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AFC0DA44(v7);
    }

    v10 = 32;
    do
    {
      v13 = *(v7 + v10);
      v11 = v13;
      v5(&v13, 1, ObjectType, a2);
      v12 = vceq_s32(v13, v11);
      if ((v12.i32[0] & v12.i32[1] & 1) == 0)
      {
        *&v9[v10] = v13;
      }

      v10 += 8;
      --v8;
    }

    while (v8);

    *(v2 + 16) = v9;
  }

  return result;
}

uint64_t sub_1AF8215B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a3;
  sub_1AF823D1C(0, &qword_1EB63F2D8, sub_1AF823CC8, &type metadata for Prefab.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF823CC8();
  sub_1AFDFF3F8();
  v18 = a2;
  v17 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v4)
  {
    v12 = v15;
    v18 = v16;
    v17 = 1;
    sub_1AFDFE918();
    v18 = v12;
    v17 = 2;
    sub_1AF82352C(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    sub_1AF82357C(&qword_1EB642E80, sub_1AF480018, MEMORY[0x1E69E6300]);
    sub_1AFDFE918();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1AF821810(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1953460082;
  if (v2 != 1)
  {
    v4 = 0x6C6576654C706F74;
    v3 = 0xEF737463656A624FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656372756F73;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1953460082;
  if (*a2 != 1)
  {
    v8 = 0x6C6576654C706F74;
    v7 = 0xEF737463656A624FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656372756F73;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF821918()
{
  v1 = 1953460082;
  if (*v0 != 1)
  {
    v1 = 0x6C6576654C706F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_1AF821974@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF8231A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF82199C(uint64_t a1)
{
  v2 = sub_1AF823CC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8219D8(uint64_t a1)
{
  v2 = sub_1AF823CC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF821A14@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF823A1C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

__n128 sub_1AF821A74@<Q0>(__n128 *a1@<X8>)
{
  result.n128_u64[0] = 0xFFFFFFFFLL;
  result.n128_u64[1] = 0xFFFFFFFFLL;
  *a1 = result;
  a1[1].n128_u64[0] = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1AF821A8C(void *a1, uint64_t a2)
{
  sub_1AF823D1C(0, &qword_1EB63F290, sub_1AF8234D8, &type metadata for EmbeddedAssets.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8234D8();
  sub_1AFDFF3F8();
  v10[1] = a2;
  sub_1AF82352C(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
  sub_1AF82357C(&qword_1EB642E80, sub_1AF480018, MEMORY[0x1E69E6300]);
  sub_1AFDFE918();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AF821C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF821D00(uint64_t a1)
{
  v2 = sub_1AF8234D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF821D3C(uint64_t a1)
{
  v2 = sub_1AF8234D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AF821D78@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF8232C0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AF821DC0(uint64_t a1)
{
  v2 = sub_1AF822420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF821DFC(uint64_t a1)
{
  v2 = sub_1AF822420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF821E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726564726FLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF821F20(uint64_t a1)
{
  v2 = sub_1AF8239C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF821F5C(uint64_t a1)
{
  v2 = sub_1AF8239C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF821F98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = a2;
  sub_1AF823D1C(0, &qword_1EB63F2C0, sub_1AF8239C8, &type metadata for Scheduling.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8239C8();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v13;
  v10 = sub_1AFDFE748();
  (*(v6 + 8))(v8, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v9 = v10;
  return result;
}

uint64_t sub_1AF822144(void *a1)
{
  sub_1AF823D1C(0, &qword_1EB63F2D0, sub_1AF8239C8, &type metadata for Scheduling.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8239C8();
  sub_1AFDFF3F8();
  sub_1AFDFE8F8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AF8222B4(unint64_t a1, uint64_t a2)
{

  v4 = sub_1AF682350(a1);

  v5 = *(v4 + 16);
  if (v5)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1AFDFE368();
    type metadata accessor for VFXAttribute();
    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);
      v8 = *(*v6 + 8);
      v9 = swift_allocObject();
      v9[2] = a2;
      v9[3] = a1;
      v9[4] = v7;
      v9[5] = v8;

      swift_unownedRetain();

      sub_1AFDFE328();
      sub_1AFDFE398();
      sub_1AFDFE3A8();
      sub_1AFDFE348();
      v6 += 16;
      --v5;
    }

    while (v5);

    return v11;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

unint64_t sub_1AF822420()
{
  result = qword_1EB63F270;
  if (!qword_1EB63F270)
  {
    result = swift_getWitnessTable(byte_1AFE7A3C8, &type metadata for DoNotExport.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F270);
  }

  return result;
}

void *sub_1AF822474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!qword_1ED730448)
  {
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x1B27189E0](a1, a2, a3, a4);
  v14 = sub_1AF6DC144(v12, v13, 0, 1);

  if (!v14 || (v15 = swift_conformsToProtocol2()) == 0)
  {
    v17 = sub_1AF8222B4(a5, a6);
    v18 = v17;
    if (v17 >> 62)
    {
      v19 = sub_1AFDFE108();
      if (v19)
      {
LABEL_9:
        v27 = v18;
        v20 = 0;
        v21 = v18 & 0xC000000000000001;
        while (1)
        {
          if (v21)
          {
            v22 = MEMORY[0x1B2719C70](v20, v18);
          }

          else
          {
            v22 = *(v18 + 8 * v20 + 32);
          }

          v23 = *(v22 + 32);
          v24 = swift_conformsToProtocol2();
          if (v24 && v23 != 0)
          {
            (*(v24 + 16))(v23, v24);
            sub_1AF6DC518();
            sub_1AF4486E4();
            v26 = sub_1AFDFDEC8();
            v18 = v27;

            if (!v26)
            {
              break;
            }
          }

          ++v20;

          if (v19 == v20)
          {
            goto LABEL_21;
          }
        }

        return v22;
      }
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_9;
      }
    }

LABEL_21:

    return 0;
  }

  return sub_1AF820374(v14, v15, a5, a6);
}

uint64_t sub_1AF822738(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v65 = qword_1ED73B840;
  v66 = 0;
  v67 = 2;
  v68 = 0;
  v69 = 2;
  v70 = 0;
  sub_1AF705044(1, &v44);
  v59 = v44;
  v60 = v45;
  v61 = v46;
  v62 = v47 | 1;
  v63 = v48;
  v64 = v49;
  sub_1AF6B06C0(v2, &v59, 0x200000000, v50);
  v34 = *v50;
  if (!*v50)
  {
    goto LABEL_38;
  }

  v33 = *&v50[40];
  v5 = *(&v51 + 1);
  v39 = *(&v52 + 1);
  v54 = *&v50[8];
  v55 = *&v50[24];
  if (v53 <= 0 || !*(&v51 + 1))
  {
    sub_1AF5D1564(v50);
LABEL_38:
    sub_1AF822BE0(&v44);
    v29 = 0;
    v30 = 0xFFFFFFFFLL;
    return v30 | v29;
  }

  v6 = *(*(&v52 + 1) + 32);
  v38 = *(v52 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v43[2] = *&v50[32];
  v43[3] = v51;
  v43[4] = v52;
  v43[5] = v53;
  v43[0] = *v50;
  v43[1] = *&v50[16];
  sub_1AF5D15C0(v50, v41);
  sub_1AF5DD298(v43, v41);
  v7 = 0;
  v40 = 0;
  v8 = 0;
  v9 = -1;
  v31 = v5;
  v32 = v6;
  while (1)
  {
    v36 = v8;
    v37 = v7;
    v10 = (v33 + 48 * v7);
    v12 = *v10;
    v11 = v10[1];
    v13 = *(v10 + 2);
    v35 = *(v10 + 3);
    v14 = *(v10 + 4);
    v15 = *(v10 + 5);
    if (v38)
    {
      v16 = *(v15 + 376);

      os_unfair_lock_lock(v16);
      os_unfair_lock_lock(*(v15 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v6);
    v17 = *(v39 + 64);
    v41[0] = *(v39 + 48);
    v41[1] = v17;
    v42 = *(v39 + 80);
    v18 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
    *(v39 + 48) = ecs_stack_allocator_allocate(*(v39 + 32), 48 * v18, 8);
    *(v39 + 56) = v18;
    *(v39 + 72) = 0;
    *(v39 + 80) = 0;
    *(v39 + 64) = 0;
    v19 = sub_1AF64B110(&type metadata for VFXTag, &off_1F253D538, v13, v35, v14, v39);
    if (!v13)
    {
      break;
    }

    if (v14)
    {
      v20 = v19 + 8;
      v6 = v32;
      while (1)
      {
        v22 = *v13++;
        v21 = v22;
        v23 = *(v20 - 1) == a1 && *v20 == a2;
        if (v23 || (sub_1AFDFEE28() & 1) != 0)
        {

          if (*(v15 + 184))
          {
            goto LABEL_41;
          }

          v9 = *(*(v15 + 168) + 4 * v21);
          v40 = *(*(v24 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v9 + 8);
        }

        v20 += 2;
        if (!--v14)
        {
          goto LABEL_25;
        }
      }
    }

LABEL_24:
    v6 = v32;
LABEL_25:
    v56 = v34;
    v57 = v54;
    v58 = v55;
    v8 = v36;
    sub_1AF630994(v39, &v56, v41);
    sub_1AF62D29C(v15);
    ecs_stack_allocator_pop_snapshot(v6);
    if (v38)
    {
      os_unfair_lock_unlock(*(v15 + 344));
      os_unfair_lock_unlock(*(v15 + 376));
    }

    v7 = v37 + 1;
    if (v37 + 1 == v31)
    {
      sub_1AF5D1564(v50);
      sub_1AF5D1564(v50);
      sub_1AF5D1564(v50);
      sub_1AF822BE0(&v44);
      v29 = v40 << 32;
      v30 = v9;
      return v30 | v29;
    }
  }

  if (v12 == v11)
  {
    goto LABEL_24;
  }

  v25 = &v19[16 * v12 + 8];
  v6 = v32;
  while (1)
  {
    v26 = *(v25 - 1) == a1 && *v25 == a2;
    if (!v26 && (sub_1AFDFEE28() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (*(v15 + 184))
    {
      break;
    }

    v9 = *(*(v15 + 168) + 4 * v12);
    v40 = *(*(v27 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v9 + 8);

LABEL_28:
    ++v12;
    v25 += 16;
    if (v11 == v12)
    {
      goto LABEL_25;
    }
  }

LABEL_41:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF822BE0(uint64_t a1)
{
  sub_1AF822C58(0, &qword_1EB633CE0, type metadata accessor for Query1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF822C58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for VFXTag, &off_1F253D538);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF822D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_1AF822D84(uint64_t a1)
{
  v2 = sub_1AFDFC318();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_1AF822DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_1AF822E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_1AF822EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_1AF822F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t type metadata accessor for VFXObjectTag(uint64_t a1)
{
  result = qword_1ED7302F0;
  if (!qword_1ED7302F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF822FEC(uint64_t a1)
{
  result = sub_1AFDFC318();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t assignWithCopy for Prefab(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

unint64_t sub_1AF8230F8()
{
  result = qword_1EB63F280;
  if (!qword_1EB63F280)
  {
    result = swift_getWitnessTable(byte_1AFE7A158, &type metadata for DoNotExport.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F280);
  }

  return result;
}

unint64_t sub_1AF823150()
{
  result = qword_1EB63F288;
  if (!qword_1EB63F288)
  {
    result = swift_getWitnessTable(byte_1AFE7A180, &type metadata for DoNotExport.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F288);
  }

  return result;
}

uint64_t sub_1AF8231A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953460082 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6576654C706F74 && a2 == 0xEF737463656A624FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

void *sub_1AF8232C0(void *a1)
{
  sub_1AF823D1C(0, &unk_1EB633B28, sub_1AF8234D8, &type metadata for EmbeddedAssets.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = sub_1AF441150(a1, a1[3]);
  sub_1AF8234D8();
  v9 = v8;
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF82352C(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    sub_1AF82357C(&qword_1ED723220, sub_1AF47FEB4, MEMORY[0x1E69E6330]);
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

unint64_t sub_1AF8234D8()
{
  result = qword_1EB634298;
  if (!qword_1EB634298)
  {
    result = swift_getWitnessTable(a1_31, &type metadata for EmbeddedAssets.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB634298);
  }

  return result;
}

void sub_1AF82352C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF82357C(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF82352C(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v8 = v7;
    v9 = a2();
    result = swift_getWitnessTable(a3, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1AF82360C(void *a1)
{
  sub_1AF823D1C(0, &unk_1EB630AF0, sub_1AF8237C8, &type metadata for VFXParentAsset.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = sub_1AF441150(a1, a1[3]);
  sub_1AF8237C8();
  v9 = v8;
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF47FEB4();
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

unint64_t sub_1AF8237C8()
{
  result = qword_1EB6320E0;
  if (!qword_1EB6320E0)
  {
    result = swift_getWitnessTable(byte_1AFE7A938, &type metadata for VFXParentAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6320E0);
  }

  return result;
}

unint64_t sub_1AF82381C()
{
  result = qword_1EB63F2A8;
  if (!qword_1EB63F2A8)
  {
    result = swift_getWitnessTable(byte_1AFE7A8E8, &type metadata for VFXBridgeTag.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F2A8);
  }

  return result;
}

unint64_t sub_1AF823870()
{
  result = qword_1EB63F2B8;
  if (!qword_1EB63F2B8)
  {
    result = swift_getWitnessTable(asc_1AFE7A898, &type metadata for VFXAssetTag.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F2B8);
  }

  return result;
}

uint64_t sub_1AF8238C4(uint64_t a1)
{
  v2 = type metadata accessor for VFXObjectTag(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF823920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VFXObjectTag(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF823984(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_1AFDFC318();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF8239C8()
{
  result = qword_1EB63F2C8;
  if (!qword_1EB63F2C8)
  {
    result = swift_getWitnessTable(aQ_60, &type metadata for Scheduling.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F2C8);
  }

  return result;
}

uint64_t sub_1AF823A1C(void *a1)
{
  sub_1AF823D1C(0, &unk_1EB630A58, sub_1AF823CC8, &type metadata for Prefab.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  sub_1AF441150(a1, v8);
  sub_1AF823CC8();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v11 = 0;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v8 = v12;
    v11 = 1;
    sub_1AFDFE768();
    sub_1AF82352C(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v11 = 2;
    sub_1AF82357C(&qword_1ED723220, sub_1AF47FEB4, MEMORY[0x1E69E6330]);
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

unint64_t sub_1AF823CC8()
{
  result = qword_1EB631310;
  if (!qword_1EB631310)
  {
    result = swift_getWitnessTable(byte_1AFE7A7F8, &type metadata for Prefab.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631310);
  }

  return result;
}

void sub_1AF823D1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF823DE8()
{
  result = qword_1EB63F2E0;
  if (!qword_1EB63F2E0)
  {
    result = swift_getWitnessTable(aA_48, &type metadata for EmbeddedAssets.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F2E0);
  }

  return result;
}

unint64_t sub_1AF823E40()
{
  result = qword_1EB63F2E8;
  if (!qword_1EB63F2E8)
  {
    result = swift_getWitnessTable(byte_1AFE7A5C0, &type metadata for VFXParentAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F2E8);
  }

  return result;
}

unint64_t sub_1AF823E98()
{
  result = qword_1EB63F2F0;
  if (!qword_1EB63F2F0)
  {
    result = swift_getWitnessTable(a1_32, &type metadata for Scheduling.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F2F0);
  }

  return result;
}

unint64_t sub_1AF823EF0()
{
  result = qword_1EB63F2F8;
  if (!qword_1EB63F2F8)
  {
    result = swift_getWitnessTable(aY_54, &type metadata for Prefab.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F2F8);
  }

  return result;
}

unint64_t sub_1AF823F48()
{
  result = qword_1EB631300;
  if (!qword_1EB631300)
  {
    result = swift_getWitnessTable(byte_1AFE7A740, &type metadata for Prefab.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631300);
  }

  return result;
}

unint64_t sub_1AF823FA0()
{
  result = qword_1EB631308;
  if (!qword_1EB631308)
  {
    result = swift_getWitnessTable(byte_1AFE7A768, &type metadata for Prefab.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631308);
  }

  return result;
}

unint64_t sub_1AF823FF8()
{
  result = qword_1EB63F300;
  if (!qword_1EB63F300)
  {
    result = swift_getWitnessTable(aI_30, &type metadata for Scheduling.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F300);
  }

  return result;
}

unint64_t sub_1AF824050()
{
  result = qword_1EB63F308;
  if (!qword_1EB63F308)
  {
    result = swift_getWitnessTable(byte_1AFE7A6B0, &type metadata for Scheduling.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F308);
  }

  return result;
}

unint64_t sub_1AF8240A8()
{
  result = qword_1EB63F310;
  if (!qword_1EB63F310)
  {
    result = swift_getWitnessTable(byte_1AFE7A638, &type metadata for VFXAssetTag.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F310);
  }

  return result;
}

unint64_t sub_1AF824100()
{
  result = qword_1EB63F318;
  if (!qword_1EB63F318)
  {
    result = swift_getWitnessTable(byte_1AFE7A660, &type metadata for VFXAssetTag.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F318);
  }

  return result;
}

unint64_t sub_1AF824158()
{
  result = qword_1EB63F320;
  if (!qword_1EB63F320)
  {
    result = swift_getWitnessTable(asc_1AFE7A5E8, &type metadata for VFXBridgeTag.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F320);
  }

  return result;
}

unint64_t sub_1AF8241B0()
{
  result = qword_1EB63F328;
  if (!qword_1EB63F328)
  {
    result = swift_getWitnessTable(asc_1AFE7A610, &type metadata for VFXBridgeTag.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63F328);
  }

  return result;
}

unint64_t sub_1AF824208()
{
  result = qword_1EB6320D0;
  if (!qword_1EB6320D0)
  {
    result = swift_getWitnessTable(byte_1AFE7A530, &type metadata for VFXParentAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6320D0);
  }

  return result;
}

unint64_t sub_1AF824260()
{
  result = qword_1EB6320D8;
  if (!qword_1EB6320D8)
  {
    result = swift_getWitnessTable(byte_1AFE7A558, &type metadata for VFXParentAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6320D8);
  }

  return result;
}

unint64_t sub_1AF8242B8()
{
  result = qword_1EB634288;
  if (!qword_1EB634288)
  {
    result = swift_getWitnessTable(aY_55, &type metadata for EmbeddedAssets.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB634288);
  }

  return result;
}

unint64_t sub_1AF824310()
{
  result = qword_1EB634290;
  if (!qword_1EB634290)
  {
    result = swift_getWitnessTable(byte_1AFE7A4A0, &type metadata for EmbeddedAssets.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB634290);
  }

  return result;
}

uint64_t sub_1AF82436C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    v6 = *(a1 + 48);
    v12[2] = *(a1 + 32);
    v12[3] = v6;
    v12[4] = *(a1 + 64);
    v13 = *(a1 + 80);
    v7 = *(a1 + 16);
    v12[0] = *a1;
    v12[1] = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    sub_1AF85148C(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v11;
  }

  else
  {
    v10 = MEMORY[0x1E69E6720];
    sub_1AF8598C4(a1, &qword_1EB6335B0, &_s8MetadataVN, MEMORY[0x1E69E6720], sub_1AF85B840);
    sub_1AF8508FC(a2, a3, v12);

    return sub_1AF8598C4(v12, &qword_1EB6335B0, &_s8MetadataVN, v10, sub_1AF85B840);
  }

  return result;
}

uint64_t sub_1AF824494(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((a1 & 0x100000000) != 0)
  {
    result = sub_1AF449CB8(a2);
    if (v8)
    {
      v9 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF8452C0();
        v11 = v13;
      }

      result = sub_1AF6B21E4(v9, v11);
      *v3 = v11;
    }
  }

  else
  {
    v4 = a1;
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1AF851CE4(v4, a2, v6);
    *v2 = v12;
  }

  return result;
}

uint64_t sub_1AF824548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1AF851F78(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1AF419914(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1AF845894();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_1AF6B234C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1AF824640(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1AF0DB6BC(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    sub_1AF852354(v11, a2, isUniquelyReferenced_nonNull_native, sub_1AF859F34, sub_1AF449D40, sub_1AF449D40, v5);
    v6 = sub_1AFDFE488();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v10;
  }

  else
  {
    sub_1AF85B280(a1, &qword_1EB63F3A8, sub_1AF4436C4);
    sub_1AF850A60(a2, sub_1AF449D40, sub_1AF6B7618, sub_1AF859F34, sub_1AF449D40, v11, v8);
    v9 = sub_1AFDFE488();
    (*(*(v9 - 8) + 8))(a2, v9);
    return sub_1AF85B280(v11, &qword_1EB63F3A8, sub_1AF4436C4);
  }

  return result;
}

uint64_t sub_1AF8247D4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1AF0DB6BC(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1AF852354(v13, a2, isUniquelyReferenced_nonNull_native, sub_1AF445E74, sub_1AF449D40, sub_1AF449D40, v5);
    v6 = sub_1AFDFE488();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v12;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CA0];
    v9 = MEMORY[0x1E69E6720];
    sub_1AF8598C4(a1, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AF85B840);
    sub_1AF850A60(a2, sub_1AF449D40, sub_1AF6B7618, sub_1AF445E74, sub_1AF449D40, v13, v10);
    v11 = sub_1AFDFE488();
    (*(*(v11 - 8) + 8))(a2, v11);
    return sub_1AF8598C4(v13, &qword_1ED726850, v8 + 8, v9, sub_1AF85B840);
  }

  return result;
}

uint64_t sub_1AF82499C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_1AF8598C4(a1, &unk_1ED731410, &type metadata for ShaderCache.ShaderCacheWeakReference, MEMORY[0x1E69E6720], sub_1AF85B840);
    v5 = sub_1AF449CB8(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF8463F0();
        v10 = v13;
      }

      sub_1AF0D5D54(*(v10 + 56) + 8 * v8, &v15);
      sub_1AF6B2A88(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_1AF8598C4(&v15, &unk_1ED731410, &type metadata for ShaderCache.ShaderCacheWeakReference, MEMORY[0x1E69E6720], sub_1AF85B840);
  }

  else
  {
    sub_1AF0D5D54(a1, &v15);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_1AF852548(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_1AF824AFC(uint64_t a1, uint64_t a2)
{
  sub_1AF0D0DD8(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    v13 = MEMORY[0x1E69695A8];
    sub_1AF85B280(a1, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    sub_1AF850B64(a2, v7);
    (*(v9 + 8))(a2, v8);
    return sub_1AF85B280(v7, &qword_1ED72DF30, v13);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1AF852688(v12, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1AF824D1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 64) <= 0xEFu)
  {
    v9 = *(a1 + 48);
    v14[2] = *(a1 + 32);
    v14[3] = v9;
    v15 = *(a1 + 64);
    v10 = *(a1 + 16);
    v14[0] = *a1;
    v14[1] = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_1AF852E4C(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    result = sub_1AF449CB8(a2);
    if (v5)
    {
      v6 = result;
      v7 = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      *&v14[0] = *v3;
      if (!v7)
      {
        sub_1AF846FA0();
        v8 = *&v14[0];
      }

      result = sub_1AF6B3070(v6, v8);
      *v3 = v8;
    }
  }

  return result;
}

uint64_t sub_1AF824DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 + 48);
  if (v5 == 255)
  {
    result = sub_1AF449CB8(a2);
    if (v9)
    {
      v10 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      *&v15[0] = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF847A00();
        v12 = *&v15[0];
      }

      v13 = *(v12 + 56) + 56 * v10;
      sub_1AF7457E0(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32), *(v13 + 40), *(v13 + 48));
      result = sub_1AF6B3500(v10, v12);
      *v3 = v12;
    }
  }

  else
  {
    v6 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v6;
    v15[2] = *(a1 + 32);
    v16 = v5 & 1;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_1AF8537B0(v15, a2, v7);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_1AF824EDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_1AF85B280(a1, &unk_1ED731060, sub_1AF0D54FC);
    v5 = sub_1AF449CB8(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF848C90();
        v10 = v13;
      }

      sub_1AF0D6D88(*(v10 + 56) + 8 * v8, &v15, sub_1AF0D54FC);
      sub_1AF6B382C(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_1AF85B280(&v15, &unk_1ED731060, sub_1AF0D54FC);
  }

  else
  {
    sub_1AF0D6D88(a1, &v15, sub_1AF0D54FC);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_1AF85474C(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_1AF82502C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1AF0D0DD8(0, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-v7];
  v9 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1AF85B280(a1, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    v14 = sub_1AF419B74(a2 | ((HIDWORD(a2) & 1) << 32));
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v2;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF8494C8();
        v18 = v22;
      }

      sub_1AF0D6D88(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      sub_1AF6B3BBC(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1AF85B280(v8, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  }

  else
  {
    sub_1AF0D6D88(a1, v13, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    result = sub_1AF854B88(v13, a2 | ((HIDWORD(a2) & 1) << 32), v19);
    *v2 = v22;
  }

  return result;
}

uint64_t sub_1AF8252CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1AF854CE8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1AF419914(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1AF849704();
        v16 = v18;
      }

      result = sub_1AF6B3DD8(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1AF825428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1AF8551C0(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1AF449CBC(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AF849F40();
        v11 = v13;
      }

      result = sub_1AF6B1F04(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1AF8254E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    result = sub_1AF855DF4(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v11;
  }

  else
  {
    result = sub_1AF449D3C(a2);
    if (v8)
    {
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v12 = *v3;
      if (!v9)
      {
        sub_1AF84B020(sub_1AF442BB0);
        v10 = v12;
      }

      result = sub_1AF6B7628();
      *v3 = v10;
    }
  }

  return result;
}

void sub_1AF8255BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1AF855CC0(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1AF449D3C(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AF84AEA8();
        v11 = v13;
      }

      sub_1AF6B3690(v9, v11);
      *v3 = v11;
    }
  }
}

void sub_1AF8256FC(uint64_t a1, void *a2, void (*a3)(uint64_t, void *, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);

    *v5 = v18;
  }

  else
  {
    v12 = sub_1AF0D5878(a2);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v19 = *v6;
      if (!v15)
      {
        a5();
        v16 = v19;
      }

      a4(v14, v16);

      *v6 = v16;
    }

    else
    {
    }
  }
}

unint64_t sub_1AF825824(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*(a1 + 88) == 255)
  {
    sub_1AF8598C4(a1, &unk_1EB642590, &type metadata for CompilationStatus, MEMORY[0x1E69E6720], sub_1AF85B840);
    v11 = sub_1AF41ACD4(a2, a3);
    if (v12)
    {
      v13 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v22 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF84B2EC();
        v15 = v22;
      }

      v16 = (*(v15 + 56) + 96 * v13);
      v17 = v16[1];
      v23 = *v16;
      v24 = v17;
      v19 = v16[3];
      v18 = v16[4];
      v20 = v16[2];
      *&v27[9] = *(v16 + 73);
      v26 = v19;
      *v27 = v18;
      v25 = v20;
      sub_1AF6B46E8(v13, v15);
      *v4 = v15;
    }

    else
    {
      v26 = 0u;
      memset(v27, 0, 24);
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      v27[24] = -1;
    }

    return sub_1AF8598C4(&v23, &unk_1EB642590, &type metadata for CompilationStatus, MEMORY[0x1E69E6720], sub_1AF85B840);
  }

  else
  {
    v7 = a1[3];
    v25 = a1[2];
    v26 = v7;
    *v27 = a1[4];
    *&v27[9] = *(a1 + 73);
    v8 = a1[1];
    v23 = *a1;
    v24 = v8;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1AF855F54(&v23, a2, a3, v9);
    *v3 = v21;
  }

  return result;
}

unint64_t sub_1AF8259D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*(a1 + 40) == 255)
  {
    sub_1AF8598C4(a1, &unk_1EB63F4A0, &_s18CachedBuildResultsV6ResultON, MEMORY[0x1E69E6720], sub_1AF85B840);
    v10 = sub_1AF41ACD4(a2, a3);
    if (v11)
    {
      v12 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v19 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF84B498();
        v14 = v19;
      }

      v15 = (*(v14 + 56) + 48 * v12);
      v16 = *(v15 + 25);
      v17 = v15[1];
      *v20 = *v15;
      *&v20[16] = v17;
      *&v20[25] = v16;
      sub_1AF6B48B0(v12, v14);
      *v4 = v14;
    }

    else
    {
      memset(v20, 0, 40);
      v20[40] = -1;
    }

    return sub_1AF8598C4(v20, &unk_1EB63F4A0, &_s18CachedBuildResultsV6ResultON, MEMORY[0x1E69E6720], sub_1AF85B840);
  }

  else
  {
    v7 = *(a1 + 16);
    *v20 = *a1;
    *&v20[16] = v7;
    *&v20[25] = *(a1 + 25);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_1AF8560D4(v20, a2, a3, v8);
    *v3 = v18;
  }

  return result;
}

uint64_t sub_1AF825B54(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1AF0D0DD8(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-v7];
  v9 = sub_1AFDFC128();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1AF85B280(a1, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
    v14 = sub_1AF41A190(a2 | ((HIDWORD(a2) & 1) << 32));
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v2;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF84B914();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1AF6B4A80(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1AF85B280(v8, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    result = sub_1AF856638(v13, a2 | ((HIDWORD(a2) & 1) << 32), v19);
    *v2 = v22;
  }

  return result;
}

uint64_t sub_1AF825F40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t), void (*a7)(void))
{
  v8 = v7;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v7;
    sub_1AF8529CC(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v7 = v23;
  }

  else
  {
    v18 = sub_1AF419914(a2, a3);
    v20 = v19;

    if (v20)
    {
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v8;
      v24 = *v8;
      if (!v21)
      {
        a7();
        v22 = v24;
      }

      result = a6(v18, v22);
      *v8 = v22;
    }
  }

  return result;
}

uint64_t sub_1AF826060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1AF852BA8(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_1AF84C3CC, sub_1AF83AF84);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1AF419914(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1AF84C3CC();
        v14 = v16;
      }

      result = sub_1AF6B234C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void sub_1AF826180(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1AF858EE0(a1, a2, isUniquelyReferenced_nonNull_native, sub_1AF449CB8, sub_1AF447B78, sub_1AF83D93C, MEMORY[0x1E69E6530]);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1AF449CB8(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AF84F9C0(sub_1AF447B78);
        v11 = v13;
      }

      swift_unknownObjectRelease();
      sub_1AF6B2F08(v9, v11);
      *v3 = v11;
    }
  }
}

uint64_t sub_1AF826298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    result = sub_1AF857D08(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    *v5 = v18;
  }

  else
  {
    result = sub_1AF449D3C(a5);
    if (v14)
    {
      v15 = result;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v5;
      v19 = *v6;
      if (!v16)
      {
        sub_1AF84DB20();
        v17 = v19;
      }

      result = sub_1AF6B4F90(v15, v17);
      *v6 = v17;
    }
  }

  return result;
}

void sub_1AF8263A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1AF858EE0(a1, a2, isUniquelyReferenced_nonNull_native, sub_1AF0D3F10, sub_1AF447C50, sub_1AF841224, MEMORY[0x1E69E5FE0]);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1AF0D3F10(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AF84F9C0(sub_1AF447C50);
        v11 = v13;
      }

      swift_unknownObjectRelease();
      sub_1AF6B2F08(v9, v11);
      *v3 = v11;
    }
  }
}

uint64_t sub_1AF8264B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    sub_1AF85917C(a1, a2, a3, a4, a5, a6, isUniquelyReferenced_nonNull_native);

    *v6 = v21;
  }

  else
  {
    v16 = sub_1AF419914(a5, a6);
    v18 = v17;

    if (v18)
    {
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v22 = *v7;
      if (!v19)
      {
        sub_1AF84FE04();
        v20 = v22;
      }

      swift_unknownObjectRelease();
      result = sub_1AF6B512C(v16, v20);
      *v7 = v20;
    }
  }

  return result;
}

void sub_1AF8265D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1AF85953C(a1, a2, isUniquelyReferenced_nonNull_native, sub_1AF419B48, sub_1AF84FFA8, sub_1AF841C54, &type metadata for VFXHandTracker.Joint);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1AF419B48(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AF84FFA8();
        v11 = v13;
      }

      sub_1AF6B52D4(v9, v11);
      *v3 = v11;
    }
  }
}

void sub_1AF8266D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1AF85953C(a1, a2, isUniquelyReferenced_nonNull_native, sub_1AF419BF8, sub_1AF850624, sub_1AF842894, &type metadata for PointCacheProperty);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1AF419BF8(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AF850624();
        v11 = v13;
      }

      sub_1AF6B57D4(v9, v11);
      *v3 = v11;
    }
  }
}

uint64_t sub_1AF826820(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t), void (*a7)(void))
{
  v8 = v7;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v7;
    sub_1AF8596D0(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v7 = v23;
  }

  else
  {
    v18 = sub_1AF419914(a2, a3);
    v20 = v19;

    if (v20)
    {
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v8;
      v24 = *v8;
      if (!v21)
      {
        a7();
        v22 = v24;
      }

      result = a6(v18, v22);
      *v8 = v22;
    }
  }

  return result;
}

double sub_1AF826940@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SDFFileAsset(0);
  v5 = *v2;
  v6 = *v2 + 41;
  v7 = *(*v2 + 16);
  v8 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v4;
  inited[5] = &off_1F252FB28;
  if (v8 > 0xF)
  {
    *&v16[0] = sub_1AFC0592C((v6 + v7), v8 >> 4);
    sub_1AF48FC80(inited);
    inited = *&v16[0];
  }

  v10 = *(v5 + 20);
  v11 = *(v5 + 22);
  v12 = 1;
  v13 = sub_1AFDFD488();
  *(v13 + 16) = 1;
  *(v13 + 32) = 3;
  if (v11)
  {
    *&v16[0] = sub_1AFC0587C((v6 + v10), v11);
    sub_1AF48FBC0(v13);
    v13 = *&v16[0];
    v12 = *(*&v16[0] + 16);
  }

  sub_1AF5C3CE0((v13 + 32), v12, inited + 4, inited[2], v2, v16);

  result = *v16;
  v15 = v16[1];
  *a1 = v16[0];
  *(a1 + 16) = v15;
  *(a1 + 32) = v17;
  return result;
}

double sub_1AF826AE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = (*v3)[8];
  v11 = v8[9];
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = a1;
  inited[5] = a2;
  if (v11 > 0xF)
  {
    *&v19[0] = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = *&v19[0];
  }

  v13 = v8[10];
  v14 = v8[11];
  v15 = 1;
  v16 = sub_1AFDFD488();
  *(v16 + 16) = 1;
  *(v16 + 32) = 3;
  if (v14)
  {
    *&v19[0] = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v16);
    v16 = *&v19[0];
    v15 = *(*&v19[0] + 16);
  }

  sub_1AF5C3CE0((v16 + 32), v15, inited + 4, inited[2], v6, v19);

  result = *v19;
  v18 = v19[1];
  *a3 = v19[0];
  *(a3 + 16) = v18;
  *(a3 + 32) = v20;
  return result;
}

uint64_t sub_1AF826C54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SceneKitRenderer(0);
  v5 = *v2;
  v6 = *v2 + 41;
  v7 = *(*v2 + 16);
  v8 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v4;
  inited[5] = &off_1F2546F88;
  if (v8 > 0xF)
  {
    v26 = sub_1AFC0592C((v6 + v7), v8 >> 4);
    sub_1AF48FC80(inited);
    inited = v26;
  }

  v10 = *(v5 + 20);
  v11 = *(v5 + 22);
  v12 = 1;
  v13 = sub_1AFDFD488();
  *(v13 + 16) = 1;
  *(v13 + 32) = 3;
  if (v11)
  {
    v26 = sub_1AFC0587C((v6 + v10), v11);
    sub_1AF48FBC0(v13);
    v13 = v26;
    v12 = v26[2];
  }

  v14 = *v2 + 41;
  v15 = *(*v2 + 24);
  v16 = *(*v2 + 26) >> 4;
  v17 = *(*v2 + 28);
  v18 = *(*v2 + 30) / 0x18u;
  v19 = *(v2 + 2);
  v20 = *(v2 + 12);
  v21 = v2[4];
  v22 = v2[2];
  v23 = *(v2 + 24);
  v24 = sub_1AF6B7F4C(inited + 4, inited[2], (v13 + 32), v12, (v14 + v15), v16, (v14 + v17), v18);

  *a1 = v24;
  *(a1 + 8) = v19;
  *(a1 + 12) = v20;
  *(a1 + 13) = v27;
  *(a1 + 15) = v28;
  *(a1 + 16) = v22;
  *(a1 + 24) = v23;
  *(a1 + 25) = v26;
  *(a1 + 28) = *(&v26 + 3);
  *(a1 + 32) = v21;
  return result;
}

uint64_t sub_1AF826E30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED727F70, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF82701C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF827208@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED727FC0, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF8273F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF8275E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, qword_1ED727FE0, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF8277CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF8279B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, qword_1ED724BA0, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF827BA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF827D90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED727FA0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF827F7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF828168@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED727FD0, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF828354@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF828540@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED727F90, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF82872C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF828918@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED727FB0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF828B04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF828CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED727F80, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF828EDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF8291F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = (*v3)[8];
  v11 = v8[9];
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = a1;
  inited[5] = a2;
  if (v11 > 0xF)
  {
    v29 = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = v29;
  }

  v13 = v8[10];
  v14 = v8[11];
  v15 = 1;
  v16 = sub_1AFDFD488();
  *(v16 + 16) = 1;
  *(v16 + 32) = 3;
  if (v14)
  {
    v29 = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v16);
    v16 = v29;
    v15 = v29[2];
  }

  v17 = *v6 + 41;
  v18 = (*v6)[12];
  v19 = (*v6)[13] >> 4;
  v20 = (*v6)[14];
  v21 = (*v6)[15] / 0x18u;
  v22 = *(v6 + 2);
  v23 = *(v6 + 12);
  v24 = v6[4];
  v25 = v6[2];
  v26 = *(v6 + 24);
  v27 = sub_1AF6B7F4C(inited + 4, inited[2], (v16 + 32), v15, (v17 + v18), v19, (v17 + v20), v21);

  *a3 = v27;
  *(a3 + 8) = v22;
  *(a3 + 12) = v23;
  *(a3 + 13) = v30;
  *(a3 + 15) = v31;
  *(a3 + 16) = v25;
  *(a3 + 24) = v26;
  *(a3 + 25) = v29;
  *(a3 + 28) = *(&v29 + 3);
  *(a3 + 32) = v24;
  return result;
}

uint64_t VFXSaver.Layout.hashValue.getter()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

double VFXSaver.__allocating_init(world:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *&result = 0x1000000010000;
  *(v2 + 24) = 0x10000;
  *(v2 + 32) = 0;
  *(v2 + 16) = a1;
  return result;
}

uint64_t VFXSaver.init(world:)(uint64_t a1)
{
  *(v1 + 24) = 0x10000;
  *(v1 + 32) = 0;
  *(v1 + 16) = a1;
  return v1;
}

unint64_t sub_1AF829578(void *a1, unint64_t a2, unint64_t a3, int a4, void *a5)
{
  result = sub_1AF8295B0(a1, a2, a3, a4, a5);
  if (!v5)
  {
    v8 = result;

    return v8;
  }

  return result;
}

unint64_t sub_1AF8295B0(void *a1, unint64_t a2, unint64_t a3, int a4, void *a5)
{
  LODWORD(v245) = a4;
  v244 = a3;
  v9 = 0xEB00000000747369;
  sub_1AF0D0DD8(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v235 = v224 - v11;
  v12 = sub_1AFDFC128();
  v237 = *(v12 - 8);
  v238 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v234 = v224 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  *&v236 = v224 - v15;
  v16 = sub_1AFDFCF78();
  v240 = *(v16 - 8);
  v241 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v242 = v224 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_1AFDFBBE8();
  v18 = *(v247 - 1);
  MEMORY[0x1EEE9AC00](v247);
  v246 = v224 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for BundleInfo(0);
  MEMORY[0x1EEE9AC00](v20);
  v251 = (v224 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v243 = sub_1AF43F898(MEMORY[0x1E69E7CC0]);
  v257 = v243;
  [*(v5 + 16) copy];
  sub_1AFDFDFB8();
  swift_unknownObjectRelease();
  sub_1AF0D4478(0, &qword_1ED7307E8, &off_1E7A77C98);
  swift_dynamicCast();
  v249 = v254;
  v22 = [v254 scene];
  v250 = *&v22[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  v23 = *(v5 + 27);
  v252 = v5;
  if (v23)
  {
    LODWORD(v239) = 1;
    v248 = 0x6C702E656E656373;
  }

  else
  {
    v24 = *(v5 + 24) == 0;
    v25 = 0x736A2E656E656373;
    if (*(v5 + 24))
    {
      v25 = 0x66762E656E656373;
    }

    v248 = v25;
    if (v24)
    {
      v9 = 0xEA00000000006E6FLL;
    }

    else
    {
      v9 = 0xEC0000006E696278;
    }

    if (v24)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    LODWORD(v239) = v26;
  }

  v254 = a5;

  sub_1AF70D168(&v255, 3031);
  v27 = v20[5];
  v28 = sub_1AFDFC318();
  v29 = v251;
  (*(*(v28 - 8) + 16))(v251 + v27, v244, v28);
  v30 = *(v252 + 24);
  v31 = v254;
  v32 = v20[10];
  *v29 = a1;
  v29[1] = a2;
  *(v29 + v20[6]) = 3031;
  *(v29 + v20[7]) = v30;
  *(v29 + v20[8]) = v245 & 1;
  v33 = (v29 + v32);
  *(v29 + v20[9]) = v31;
  *v33 = v248;
  v33[1] = v9;
  sub_1AFDFBC38();
  swift_allocObject();

  v34 = sub_1AFDFBC28();
  v244 = a2;
  v35 = v34;
  v36 = MEMORY[0x1E6967F78];
  sub_1AF0D0DD8(0, &unk_1EB63F330, MEMORY[0x1E6967F78], MEMORY[0x1E69E6F90]);
  v245 = a1;
  v37 = *(v18 + 72);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1AFE4C620;
  sub_1AFDFBBD8();
  sub_1AFDFBBC8();
  v255 = v38;
  sub_1AF85A9A0(&unk_1EB63DD30, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  sub_1AF0D0DD8(0, &unk_1EB63F340, v36, MEMORY[0x1E69E62F8]);
  sub_1AF6A07D0();
  sub_1AFDFE058();
  sub_1AFDFBBF8();
  sub_1AF85A9A0(&qword_1EB63F350, type metadata accessor for BundleInfo, byte_1AFE79D70);
  v39 = v308;
  v40 = sub_1AFDFBC08();
  v308 = v39;
  if (v39)
  {

    v42 = v29;
LABEL_24:
    sub_1AF85A428(v42, type metadata accessor for BundleInfo);
    return v37;
  }

  v37 = v41;
  v246 = v9;
  v43 = v40;
  v44 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  sub_1AF43C9F0(v43, v37);
  v45 = sub_1AFDFC1A8();
  v46 = [v44 initRegularFileWithContents_];

  v233 = v43;
  sub_1AF439ED8(v43, v37);
  v47 = v46;
  v48 = v257;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v255 = v48;
  v243 = v47;
  sub_1AF8596D0(v47, 0x6F736A2E6F666E69, 0xE90000000000006ELL, isUniquelyReferenced_nonNull_native, sub_1AF84D4C0, sub_1AF83CCB4);
  v232 = v255;
  v257 = v255;
  v50 = v249;
  v51 = [v249 scene];
  v52 = *&v51[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  v53 = *(v52 + 184);

  v54 = v308;
  v55 = sub_1AF6D5628(&type metadata for AssetManagerInstance, &off_1F25418A0, v53);
  v308 = v54;

  v56 = v50;
  v57 = [v50 scene];
  v58 = *&v57[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  v59 = *(v252 + 24);
  v60 = v250;
  v247 = v55;
  if (v59 == 1)
  {
    v61 = v242;
    if (v55)
    {
      sub_1AF8D360C(v58);
      sub_1AF8BD8C0(v58);
    }

    v62 = v56;
    v63 = v308;
    sub_1AF925378(v56);
    v308 = v63;
    if (v63)
    {

      sub_1AF439ED8(v233, v37);

LABEL_23:

      v42 = v251;
      goto LABEL_24;
    }

    v230 = v37;
    v231 = v52;
  }

  else
  {
    v230 = v37;
    v231 = v52;
    v61 = v242;
    v62 = v56;
  }

  sub_1AF7D3C8C(v58, 1);
  sub_1AF7D5A90(v58, 1, 1);

  v37 = *(v252 + 24);
  type metadata accessor for SwiftTrampolineCodeGen();
  swift_allocObject();

  v64 = v244;

  v65 = sub_1AFB0F318(v60, v245, v64);

  v66 = v308;
  v67 = sub_1AFB081E0(v37);
  v308 = v66;
  if (v66)
  {

    sub_1AF439ED8(v233, v230);

    goto LABEL_23;
  }

  v228 = v65;
  if (v67 < 1)
  {

    v229 = 0;
  }

  else
  {
    v69 = v61;
    sub_1AFDFCF58();
    v70 = sub_1AFDFCF08();
    v71 = v35;
    v73 = v72;

    (v240)[1](v69, v241);
    v74 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    v75 = sub_1AFDFC1A8();
    v229 = [v74 initRegularFileWithContents_];

    v60 = v250;
    v76 = v73;
    v35 = v71;
    sub_1AF587E7C(v70, v76);
  }

  type metadata accessor for CTrampolineCodeGen();
  swift_allocObject();

  v77 = v244;

  v78 = sub_1AFB0F318(v60, v245, v77);

  v79 = v308;
  sub_1AFB06C28(v37);
  v308 = v79;
  if (v79)
  {

    sub_1AF439ED8(v233, v230);

    sub_1AF85A428(v251, type metadata accessor for BundleInfo);
LABEL_34:

    return v37;
  }

  v226 = v35;
  v227 = v78;
  v80 = v242;
  sub_1AFDFCF58();
  v81 = sub_1AFDFCF08();
  v83 = v82;

  v225 = v240[1];
  v225(v80, v241);
  v84 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  v85 = sub_1AFDFC1A8();
  v240 = [v84 initRegularFileWithContents_];

  v86 = v250;
  sub_1AF587E7C(v81, v83);
  v87 = type metadata accessor for MetalTrampolineCodeGen();
  swift_allocObject();

  v88 = sub_1AFB0F318(v86, v245, v77);

  v89 = v308;
  v90 = sub_1AFB01F1C(v37);
  v308 = v89;
  if (v89)
  {

    sub_1AF439ED8(v233, v230);

    sub_1AF85A428(v251, type metadata accessor for BundleInfo);
    v91 = v240;
LABEL_33:

    goto LABEL_34;
  }

  v92 = v225;
  v224[1] = v87;
  v93 = v90;
  v94 = sub_1AF8BB88C();
  v96 = v95;
  v224[2] = v88;
  v255 = sub_1AFAFA374();
  v256 = v97;
  v98 = v251;
  if (qword_1EB6372E0 != -1)
  {
    swift_once();
  }

  MEMORY[0x1B2718AE0](qword_1EB6C35A8, unk_1EB6C35B0);
  MEMORY[0x1B2718AE0](v94, v96);

  v99 = sub_1AFB12950(v93);
  v101 = v100;

  MEMORY[0x1B2718AE0](v99, v101);

  v102 = v242;
  sub_1AFDFCF58();
  v103 = sub_1AFDFCF08();
  v105 = v104;

  v92(v102, v241);
  v37 = 0x1E696A000uLL;
  v106 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  v107 = sub_1AFDFC1A8();
  v242 = [v106 initRegularFileWithContents_];

  sub_1AF587E7C(v103, v105);
  v108 = *(v252 + 32);
  v109 = v245;
  if (v108)
  {
    v110 = v249;
    if (*(v108 + 16))
    {

      v112 = sub_1AF757304(v111);
      v113 = v308;
      sub_1AF81090C(v86, v109, v244, v112, 1);
      v308 = v113;
      if (v113)
      {

        sub_1AF439ED8(v233, v230);

LABEL_43:
        v118 = v98;
LABEL_44:
        sub_1AF85A428(v118, type metadata accessor for BundleInfo);

        v91 = v242;
        goto LABEL_33;
      }

      v114 = v236;
      sub_1AFDFC018();

      v115 = v308;
      v116 = sub_1AFDFC148();
      v308 = v115;
      if (v115)
      {

        sub_1AF439ED8(v233, v230);
        (*(v237 + 1))(v114, v238);

        goto LABEL_43;
      }

      v119 = v116;
      v120 = v117;
      v121 = v237 + 8;
      *&v236 = *(v237 + 1);
      (v236)(v114, v238);
      v122 = objc_allocWithZone(MEMORY[0x1E696AC38]);
      sub_1AF43C9F0(v119, v120);
      v123 = v120;
      v124 = sub_1AFDFC1A8();
      v125 = [v122 initRegularFileWithContents_];
      v126 = v119;
      v127 = v109;
      v128 = v125;

      v129 = v126;
      v241 = v123;
      sub_1AF439ED8(v126, v123);
      sub_1AF826820(v128, 0x2E73747069726373, 0xEE00656C646E7562, sub_1AF84D4C0, sub_1AF83CCB4, sub_1AF6B7624, sub_1AF84D4C0);
      swift_allocObject();
      v37 = v250;

      v130 = v244;

      sub_1AFB0F318(v37, v127, v130);

      LOWORD(v126) = *(v108 + 32);

      LOWORD(v255) = v126;
      v131 = v235;
      v132 = v308;
      sub_1AFB03BB4(&v255, v235);
      v308 = v132;
      if (v132)
      {

        sub_1AF439ED8(v233, v230);

        sub_1AF439ED8(v129, v241);

LABEL_47:

        v118 = v251;
        goto LABEL_44;
      }

      v232 = v121;
      v133 = v237;
      v134 = v238;
      v135 = (*(v237 + 6))(v131, 1, v238);
      v136 = v231;
      if (v135 == 1)
      {
        sub_1AF439ED8(v129, v241);

        sub_1AF85B280(v131, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
      }

      else
      {
        v37 = v234;
        v133[4](v234, v131, v134);
        v137 = v308;
        v138 = sub_1AFDFC148();
        v308 = v137;
        if (v137)
        {

          sub_1AF439ED8(v129, v241);

          sub_1AF439ED8(v233, v230);
          (v236)(v37, v134);
          goto LABEL_47;
        }

        v140 = v138;
        v141 = v139;
        v231 = v136;
        v237 = objc_allocWithZone(MEMORY[0x1E696AC38]);
        v142 = v134;
        v143 = v37;
        v144 = sub_1AFDFC1A8();
        v237 = [v237 initRegularFileWithContents_];

        sub_1AF439ED8(v140, v141);
        sub_1AF826820(v237, 0xD000000000000010, 0x80000001AFF36210, sub_1AF84D4C0, sub_1AF83CCB4, sub_1AF6B7624, sub_1AF84D4C0);

        sub_1AF439ED8(v129, v241);
        (v236)(v143, v142);
      }

      v86 = v250;
    }
  }

  sub_1AF7D62D4(v86);
  if (*(v252 + 24) == 1)
  {
    sub_1AF68B420();
    sub_1AF68BA24();
    sub_1AF68C020();
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v302 = qword_1ED73B840;
    v303 = 0;
    v304 = 2;
    v305 = 1;
    v306 = 2;
    v307 = 0;

    sub_1AF826AE0(&type metadata for DoNotExport, &off_1F253CF60, v258);

    v294[0] = v258[0];
    v294[1] = v258[1];
    v295 = v259;
    sub_1AF6B06C0(v86, v294, 0x200000000, &v260);
    sub_1AF85A428(v258, sub_1AF85999C);
    if (v260)
    {
      v290 = v263;
      v291 = v264;
      v292 = v265;
      v287 = v260;
      v293 = v266;
      v288 = v261;
      v289 = v262;
      sub_1AF6B8EAC(0);
      sub_1AF8598C4(&v260, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF85B840);
    }

    v86 = v250;
    sub_1AF68D1FC();
    sub_1AF68D51C();
    v145 = *(v252 + 24);
  }

  else
  {
    v145 = 0;
  }

  v241 = sub_1AF8B0954(v86, v145);

  v146 = MEMORY[0x1E69E7CC0];
  sub_1AF6B8360(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], &v267, v147);
  v296 = v267;
  v297 = v268;
  v298 = v269;
  v299 = v270 | 1;
  v300 = v271;
  v301 = v272;
  *&v148 = sub_1AF6B06C0(v86, &v296, 0x200000000, &v273).n128_u64[0];
  if (v273)
  {
    v283 = v276;
    v284 = v277;
    v285 = v278;
    v280 = v273;
    v286 = v279;
    v281 = v274;
    v282 = v275;
    v146 = sub_1AF6B9944();
    sub_1AF8598C4(&v273, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF85B840);
  }

  v149 = v252;
  v150 = sub_1AF69B9F8(v146, v239, *(v252 + 26), v148);
  v152 = v151;
  v154 = v153;

  v155 = v249;
  v156 = [v249 scene];
  v157 = *&v156[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  *(v154 + 16) = v157;

  v158 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  sub_1AF43C9F0(v150, v152);
  v159 = sub_1AFDFC1A8();
  v160 = [v158 initRegularFileWithContents_];

  v238 = v150;
  v239 = v152;
  sub_1AF439ED8(v150, v152);
  v161 = v160;
  v162 = v257;
  v163 = swift_isUniquelyReferenced_nonNull_native();
  v255 = v162;
  v237 = v161;
  sub_1AF8596D0(v161, v248, v246, v163, sub_1AF84D4C0, sub_1AF83CCB4);

  v257 = v255;
  v164 = objc_opt_self();
  v165 = sub_1AFDFCEC8();
  v248 = v154;
  [v164 setValue:v154 forKey:v165];

  sub_1AF859850(0);
  v166 = swift_allocObject();
  v236 = xmmword_1AFE431C0;
  *(v166 + 16) = xmmword_1AFE431C0;
  v255 = sub_1AFDFCEF8();
  v256 = v167;
  sub_1AFDFE178();
  v168 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(v166 + 96) = sub_1AF0D4478(0, &qword_1ED721F80, 0x1E696AD98);
  *(v166 + 72) = v168;
  sub_1AF43F8B0(v166);
  swift_setDeallocating();
  sub_1AF8598C4(v166 + 32, &qword_1EB63F360, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8, sub_1AF0D8108);
  swift_deallocClassInstance();
  v169 = sub_1AFDFCBE8();

  v170 = [v155 dataRepresentationWithOptions_];

  v171 = sub_1AFDFC1B8();
  v173 = v172;

  v174 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  sub_1AF43C9F0(v171, v173);
  v175 = sub_1AFDFC1A8();
  v176 = [v174 initRegularFileWithContents_];

  sub_1AF439ED8(v171, v173);
  sub_1AF826820(v176, 0x6C702E646C726F77, 0xEB00000000747369, sub_1AF84D4C0, sub_1AF83CCB4, sub_1AF6B7624, sub_1AF84D4C0);
  v177 = v241;

  v253 = v177;
  if (v247 && *(v247 + OBJC_IVAR____TtC3VFX12AssetManager_authoringFileManager))
  {
    v37 = v171;

    v179 = v308;
    sub_1AF8AE0E4(v178, &v253);
    v180 = v229;
    v181 = v230;
    v308 = v179;
    if (v179)
    {

      sub_1AF439ED8(v233, v181);

      sub_1AF439ED8(v238, v239);
      sub_1AF439ED8(v171, v173);

      sub_1AF692DB0(&v267);

      sub_1AF85A428(v251, type metadata accessor for BundleInfo);

      return v37;
    }

    v246 = v173;

    v220 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    sub_1AF0D4478(0, &unk_1ED726BA0, 0x1E696AC38);
    v221 = sub_1AFDFCBE8();

    v222 = [v220 initDirectoryWithFileWrappers_];

    sub_1AF826820(v222, 0x737465737361, 0xE600000000000000, sub_1AF84D4C0, sub_1AF83CCB4, sub_1AF6B7624, sub_1AF84D4C0);
  }

  else
  {
    v182 = v245;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v255 = 0;
    v256 = 0xE000000000000000;
    sub_1AFDFE218();

    v255 = 0xD000000000000015;
    v256 = 0x80000001AFF36960;
    MEMORY[0x1B2718AE0](v182, v244);
    v184 = v255;
    v183 = v256;
    v185 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v223 = v185;
      swift_once();
      v185 = v223;
    }

    v246 = v173;
    v255 = 0;
    sub_1AF0D4F18(v185, &v255, v184, v183);
  }

  v186 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  sub_1AF0D4478(0, &unk_1ED726BA0, 0x1E696AC38);
  v187 = sub_1AFDFCBE8();

  v188 = [v186 initDirectoryWithFileWrappers_];

  if (*(v252 + 25))
  {
    v252 = v171;
    sub_1AF0D0DD8(0, &qword_1EB63F368, sub_1AF859924, MEMORY[0x1E69E6F90]);
    v189 = swift_allocObject();
    *(v189 + 16) = v236;
    v191 = v244;
    v190 = v245;
    v255 = v245;
    v256 = v244;

    MEMORY[0x1B2718AE0](2019980846, 0xE400000000000000);
    v192 = v256;
    *(v189 + 32) = v255;
    *(v189 + 40) = v192;
    *(v189 + 48) = v188;
    v193 = v188;
    sub_1AF43F898(v189);
    swift_setDeallocating();
    sub_1AF85A428(v189 + 32, sub_1AF859924);
    swift_deallocClassInstance();
    v194 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    v195 = sub_1AFDFCBE8();

    v37 = [v194 &selRef:v195 :?commitResourceCommandBufferIfNeeded + 2];

    v196 = v229;
    if (v229)
    {
      v255 = v190;
      v256 = v191;

      v197 = v196;
      MEMORY[0x1B2718AE0](0x74666977732ELL, 0xE600000000000000);
      v198 = sub_1AFDFCEC8();

      [v197 setPreferredFilename_];

      v199 = [v37 addFileWrapper_];
    }

    v200 = v240;
    v201 = v252;
    if (v240)
    {
      v255 = v245;
      v256 = v244;

      v202 = v200;
      MEMORY[0x1B2718AE0](1886413614, 0xE400000000000000);
      v203 = sub_1AFDFCEC8();

      [v202 setPreferredFilename_];

      v204 = [v37 addFileWrapper_];
      v200 = v240;
    }

    v205 = v242;
    if (v242)
    {
      v255 = v245;
      v256 = v244;

      v206 = v205;
      MEMORY[0x1B2718AE0](0x6C6174656D2ELL, 0xE600000000000000);
      v207 = sub_1AFDFCEC8();

      [v206 setPreferredFilename_];

      v208 = [v37 addFileWrapper_];

      v200 = v240;
    }

    else
    {
    }

    sub_1AF692DB0(&v267);

    sub_1AF439ED8(v201, v246);

    sub_1AF439ED8(v233, v230);
    sub_1AF439ED8(v238, v239);
    sub_1AF85A428(v251, type metadata accessor for BundleInfo);
  }

  else
  {
    v205 = v242;
    if (*(v252 + 24) != 1)
    {
      goto LABEL_86;
    }

    v209 = v229;
    if (v229)
    {
      v255 = 1701080931;
      v256 = 0xE400000000000000;
      v210 = v229;
      MEMORY[0x1B2718AE0](0x74666977732ELL, 0xE600000000000000);
      v211 = sub_1AFDFCEC8();

      [v210 setPreferredFilename_];

      v212 = [v188 addFileWrapper_];
    }

    if (v240)
    {
      v255 = 1701080931;
      v256 = 0xE400000000000000;
      v213 = v240;
      MEMORY[0x1B2718AE0](1886413614, 0xE400000000000000);
      v214 = sub_1AFDFCEC8();

      [v213 setPreferredFilename_];

      v215 = [v188 addFileWrapper_];
    }

    v229 = v209;
    if (v205)
    {
      v255 = 1701080931;
      v256 = 0xE400000000000000;
      v216 = v205;
      MEMORY[0x1B2718AE0](0x6C6174656D2ELL, 0xE600000000000000);
      v217 = sub_1AFDFCEC8();

      [v216 setPreferredFilename_];

      v218 = [v188 addFileWrapper_];
    }

    else
    {
LABEL_86:
    }

    v219 = v249;
    sub_1AF692DB0(&v267);

    sub_1AF439ED8(v171, v246);

    sub_1AF439ED8(v233, v230);
    sub_1AF439ED8(v238, v239);
    sub_1AF85A428(v251, type metadata accessor for BundleInfo);
    v37 = v188;
    v200 = v240;
    v196 = v229;
  }

  return v37;
}

uint64_t VFXSaver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF82BA00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &unk_1EB630B90, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
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
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v8 << 6);
LABEL_14:
      v20 = *(*(v5 + 48) + 8 * v16);
      v21 = sub_1AFDFF278();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = (63 - v22) >> 6;
        do
        {
          if (v24 + 1 == v25)
          {
            v24 = 0;
          }

          else
          {
            ++v24;
          }

          v26 = *(v13 + 8 * v24);
        }

        while (v26 == -1);
        v14 = __clz(__rbit64(~v26)) + (v24 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v20;
      ++*(v7 + 16);
    }

    v17 = v8 << 6;
    while (1)
    {
      v18 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v19 = *(v5 + 8 * v8 + 72);
      v17 += 64;
      ++v8;
      if (v19)
      {
        v11 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v8 = v18;
        goto LABEL_14;
      }
    }

    if (v4)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF82BC4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB630BF8, MEMORY[0x1E69E5FE0], &type metadata for TraversalTag, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
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
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v8 << 6);
LABEL_14:
      v20 = *(*(v5 + 48) + 8 * v16);
      v21 = *(*(v5 + 56) + v16);
      v22 = sub_1AFDFF278();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v13 + 8 * v25);
        }

        while (v27 == -1);
        v14 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v20;
      *(*(v7 + 56) + v14) = v21;
      ++*(v7 + 16);
    }

    v17 = v8 << 6;
    while (1)
    {
      v18 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v19 = *(v5 + 8 * v8 + 72);
      v17 += 64;
      ++v8;
      if (v19)
      {
        v11 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v8 = v18;
        goto LABEL_14;
      }
    }

    if (v30)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
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

uint64_t sub_1AF82BED8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1AF859FA4(0, &qword_1EB630C48, MEMORY[0x1E69695A8], sub_1AF4644D8, &type metadata for TraversalTag);
  v41 = v4;
  v9 = sub_1AFDFE5A8();
  v10 = v9;
  if (!*(v8 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v11 = 0;
  v12 = *(v8 + 64);
  v36 = (v8 + 64);
  v37 = v2;
  v13 = 1 << *(v8 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v38 = (v6 + 16);
  v39 = v6;
  v42 = (v6 + 32);
  v17 = v9 + 64;
  v44 = v5;
  v18 = v40;
  while (v15)
  {
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v11 << 6);
LABEL_14:
    v25 = *(v6 + 72);
    v26 = *(v8 + 48) + v25 * v21;
    if (v41)
    {
      (*v42)(v18, v26, v44);
    }

    else
    {
      (*v38)(v18, v26, v44);
    }

    v43 = *(*(v8 + 56) + v21);
    sub_1AF4644D8();
    v27 = sub_1AFDFCCF8();
    v28 = -1 << *(v10 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = (63 - v28) >> 6;
      do
      {
        if (v30 + 1 == v31)
        {
          v30 = 0;
        }

        else
        {
          ++v30;
        }

        v32 = *(v17 + 8 * v30);
      }

      while (v32 == -1);
      v19 = __clz(__rbit64(~v32)) + (v30 << 6);
    }

    v18 = v40;
    *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    (*v42)((*(v10 + 48) + v25 * v19), v18, v44);
    *(*(v10 + 56) + v19) = v43;
    ++*(v10 + 16);
    v6 = v39;
  }

  v22 = v11 << 6;
  while (1)
  {
    v23 = v11 + 1;
    if (v11 + 1 >= v16)
    {
      break;
    }

    v24 = *(v8 + 8 * v11 + 72);
    v22 += 64;
    ++v11;
    if (v24)
    {
      v15 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v11 = v23;
      goto LABEL_14;
    }
  }

  if (v41)
  {
    v33 = 1 << *(v8 + 32);
    v3 = v37;
    if (v33 >= 64)
    {
      bzero(v36, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v33;
    }

    *(v8 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v37;
LABEL_31:
  *v3 = v10;
  return result;
}

uint64_t sub_1AF82C288(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1AF85A9E8(0, &qword_1EB630C30, sub_1AF444718);
  v43 = v4;
  v10 = sub_1AFDFE5A8();
  v11 = v10;
  if (!*(v9 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v48 = v8;
  v12 = 0;
  v13 = *(v9 + 64);
  v39 = (v9 + 64);
  v40 = v2;
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v41 = (v6 + 16);
  v42 = v6;
  v44 = (v6 + 32);
  v18 = v10 + 64;
  while (v16)
  {
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = v21 | (v12 << 6);
LABEL_14:
    v26 = *(v9 + 48) + *(v42 + 72) * v22;
    v27 = 16 * v22;
    v47 = *(v42 + 72);
    if (v43)
    {
      (*v44)(v48, v26, v5);
      v28 = *(v9 + 56) + v27;
      v46 = *v28;
      v45 = *(v28 + 8);
    }

    else
    {
      (*v41)(v48, v26, v5);
      v29 = *(v9 + 56) + v27;
      v30 = *(v29 + 8);
      v46 = *v29;
      v45 = v30;
      sub_1AF85AA64(v46, v30);
    }

    sub_1AF4644D8();
    v31 = sub_1AFDFCCF8();
    v32 = -1 << *(v11 + 32);
    v33 = v31 & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v35 = (63 - v32) >> 6;
      do
      {
        if (v34 + 1 == v35)
        {
          v34 = 0;
        }

        else
        {
          ++v34;
        }

        v36 = *(v18 + 8 * v34);
      }

      while (v36 == -1);
      v19 = __clz(__rbit64(~v36)) + (v34 << 6);
    }

    *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    (*v44)((*(v11 + 48) + v47 * v19), v48, v5);
    v20 = *(v11 + 56) + 16 * v19;
    *v20 = v46;
    *(v20 + 8) = v45;
    ++*(v11 + 16);
  }

  v23 = v12 << 6;
  while (1)
  {
    v24 = v12 + 1;
    if (v12 + 1 >= v17)
    {
      break;
    }

    v25 = *(v9 + 8 * v12 + 72);
    v23 += 64;
    ++v12;
    if (v25)
    {
      v16 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v12 = v24;
      goto LABEL_14;
    }
  }

  if (v43)
  {
    v37 = 1 << *(v9 + 32);
    v3 = v40;
    if (v37 >= 64)
    {
      bzero(v39, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v39 = -1 << v37;
    }

    *(v9 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v40;
LABEL_31:
  *v3 = v11;
  return result;
}

uint64_t sub_1AF82C678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB633190, MEMORY[0x1E69E6530], MEMORY[0x1E69E6158], MEMORY[0x1E69E6540]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v33 = (v5 + 64);
  v34 = v3;
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
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = *(*(v5 + 48) + 8 * v21);
    v26 = (*(v5 + 56) + 16 * v21);
    v28 = *v26;
    v27 = v26[1];
    if ((v4 & 1) == 0)
    {
    }

    v14 = sub_1AFDFF278();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v29)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v30 = *(v13 + 8 * v17);
      }

      while (v30 == -1);
      v18 = __clz(__rbit64(~v30)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v25;
    v19 = (*(v7 + 56) + 16 * v18);
    *v19 = v28;
    v19[1] = v27;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v34;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v34;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82C8F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB63F4E0, MEMORY[0x1E69E6158], &_s8MetadataVN, MEMORY[0x1E69E6168]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v8 = 0;
  v42 = (v5 + 64);
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
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v21 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v22 = v21 | (v8 << 6);
LABEL_14:
    v26 = (*(v5 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v5 + 56) + 88 * v22;
    if (v4)
    {
      v30 = *(v29 + 16);
      v43 = *v29;
      v44 = v30;
      v31 = *(v29 + 32);
      v32 = *(v29 + 48);
      v33 = *(v29 + 64);
      v48 = *(v29 + 80);
      v47 = v33;
      v45 = v31;
      v46 = v32;
    }

    else
    {
      sub_1AF4455CC(v29, &v43);
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v34 = sub_1AFDFF2F8();
    v35 = -1 << *(v7 + 32);
    v36 = v34 & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v13 + 8 * (v36 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v36) & ~*(v13 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v38 = (63 - v35) >> 6;
      do
      {
        if (v37 + 1 == v38)
        {
          v37 = 0;
        }

        else
        {
          ++v37;
        }

        v39 = *(v13 + 8 * v37);
      }

      while (v39 == -1);
      v14 = __clz(__rbit64(~v39)) + (v37 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = (*(v7 + 48) + 16 * v14);
    *v15 = v27;
    v15[1] = v28;
    v16 = *(v7 + 56) + 88 * v14;
    v17 = v44;
    *v16 = v43;
    *(v16 + 16) = v17;
    v18 = v45;
    v19 = v46;
    v20 = v47;
    *(v16 + 80) = v48;
    *(v16 + 48) = v19;
    *(v16 + 64) = v20;
    *(v16 + 32) = v18;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      goto LABEL_14;
    }
  }

  if (v4)
  {
    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero(v42, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v42 = -1 << v40;
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v2;
LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82CBE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF43D014(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v30 = (v5 + 64);
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
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((v4 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](v24);
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v26)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v27 = *(v13 + 8 * v17);
      }

      while (v27 == -1);
      v18 = __clz(__rbit64(~v27)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82CE8C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = v6;
  v8 = a2;
  v9 = *v6;
  sub_1AF85A824(0, a3, a4, a5, a6);
  v10 = sub_1AFDFE5A8();
  v11 = v10;
  if (!*(v9 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v12 = 0;
  v34 = (v9 + 64);
  v35 = v7;
  v13 = 1 << *(v9 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v9 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = v10 + 64;
  while (v15)
  {
    v23 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v24 = v23 | (v12 << 6);
LABEL_15:
    v28 = *(*(v9 + 48) + 8 * v24);
    v29 = *(*(v9 + 56) + 8 * v24);
    if ((v8 & 1) == 0)
    {
    }

    v18 = sub_1AFDFF278();
    v19 = -1 << *(v11 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v17 + 8 * (v20 >> 6))) != 0)
    {
      v22 = __clz(__rbit64((-1 << v20) & ~*(v17 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - v19) >> 6;
      do
      {
        if (v21 + 1 == v30)
        {
          v21 = 0;
        }

        else
        {
          ++v21;
        }

        v31 = *(v17 + 8 * v21);
      }

      while (v31 == -1);
      v22 = __clz(__rbit64(~v31)) + (v21 << 6);
    }

    *(v17 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v28;
    *(*(v11 + 56) + 8 * v22) = v29;
    ++*(v11 + 16);
  }

  v25 = v12 << 6;
  while (1)
  {
    v26 = v12 + 1;
    if (v12 + 1 >= v16)
    {
      break;
    }

    v27 = *(v9 + 8 * v12 + 72);
    v25 += 64;
    ++v12;
    if (v27)
    {
      v15 = (v27 - 1) & v27;
      v24 = __clz(__rbit64(v27)) + v25;
      v12 = v26;
      goto LABEL_15;
    }
  }

  if (v8)
  {
    v32 = 1 << *(v9 + 32);
    v7 = v35;
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    *(v9 + 16) = 0;
    goto LABEL_29;
  }

  v7 = v35;
LABEL_30:
  *v7 = v11;
  return result;
}

uint64_t sub_1AF82D100(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF446A3C(0);
  v34 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v33 = (v5 + 64);
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
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = *(v5 + 48) + 32 * v21;
    v35 = *v25;
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    v28 = *(*(v5 + 56) + 8 * v21);
    if ((v34 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](v35);
    sub_1AFDFE008();
    sub_1AFDFCD08();
    MEMORY[0x1B271ACB0](v27);
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v29)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v30 = *(v13 + 8 * v17);
      }

      while (v30 == -1);
      v18 = __clz(__rbit64(~v30)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = *(v7 + 48) + 32 * v18;
    *v19 = v35;
    *(v19 + 16) = v26;
    *(v19 + 24) = v27;
    *(*(v7 + 56) + 8 * v18) = v28;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v34)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82D3C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF446040(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v30 = (v5 + 64);
  v31 = v3;
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
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + 4 * v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((v4 & 1) == 0)
    {
    }

    v14 = MEMORY[0x1B271AC80](*(v7 + 40), v24, 4);
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v26)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v27 = *(v13 + 8 * v17);
      }

      while (v27 == -1);
      v18 = __clz(__rbit64(~v27)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 4 * v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (v4)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v31;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v31;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82D618(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1ED726B10, MEMORY[0x1E69E6530], &type metadata for QueryManager.QueryInfo, MEMORY[0x1E69E6540]);
  v36 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v35 = v3;
  v8 = 0;
  v34 = (v5 + 64);
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
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = *(*(v5 + 48) + 8 * v21);
    v26 = (*(v5 + 56) + 24 * v21);
    v27 = *v26;
    v28 = v26[1];
    v29 = v26[2];
    if ((v36 & 1) == 0)
    {
    }

    v14 = sub_1AFDFF278();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v30)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v31 = *(v13 + 8 * v17);
      }

      while (v31 == -1);
      v18 = __clz(__rbit64(~v31)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v25;
    v19 = (*(v7 + 56) + 24 * v18);
    *v19 = v27;
    v19[1] = v28;
    v19[2] = v29;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v36)
  {
    v32 = 1 << *(v5 + 32);
    v3 = v35;
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v35;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82D8C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1ED723060, MEMORY[0x1E69E6530], MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
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
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v8 << 6);
LABEL_14:
      v20 = *(*(v5 + 48) + 8 * v16);
      v21 = *(*(v5 + 56) + 8 * v16);
      v22 = sub_1AFDFF278();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v13 + 8 * v25);
        }

        while (v27 == -1);
        v14 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v20;
      *(*(v7 + 56) + 8 * v14) = v21;
      ++*(v7 + 16);
    }

    v17 = v8 << 6;
    while (1)
    {
      v18 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v19 = *(v5 + 8 * v8 + 72);
      v17 += 64;
      ++v8;
      if (v19)
      {
        v11 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v8 = v18;
        goto LABEL_14;
      }
    }

    if (v30)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
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

uint64_t sub_1AF82DB18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1ED726B00, MEMORY[0x1E69E6530], MEMORY[0x1E69E72F0], MEMORY[0x1E69E6540]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
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
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v8 << 6);
LABEL_14:
      v20 = *(*(v5 + 48) + 8 * v16);
      v21 = *(*(v5 + 56) + 4 * v16);
      v22 = sub_1AFDFF278();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v13 + 8 * v25);
        }

        while (v27 == -1);
        v14 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v20;
      *(*(v7 + 56) + 4 * v14) = v21;
      ++*(v7 + 16);
    }

    v17 = v8 << 6;
    while (1)
    {
      v18 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v19 = *(v5 + 8 * v8 + 72);
      v17 += 64;
      ++v8;
      if (v19)
      {
        v11 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v8 = v18;
        goto LABEL_14;
      }
    }

    if (v30)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
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

uint64_t sub_1AF82DD74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1ED726AE0, MEMORY[0x1E69E6B70], MEMORY[0x1E69E6530], MEMORY[0x1E69E6B78]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    goto LABEL_28;
  }

  v31 = v4;
  v8 = 0;
  v30 = (v5 + 64);
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
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v8 << 6);
LABEL_14:
    v20 = *(*(v5 + 48) + 8 * v16);
    v21 = *(*(v5 + 56) + 8 * v16);
    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](v20);
    v22 = sub_1AFDFF2F8();
    v23 = -1 << *(v7 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v23) >> 6;
      do
      {
        if (v25 + 1 == v26)
        {
          v25 = 0;
        }

        else
        {
          ++v25;
        }

        v27 = *(v13 + 8 * v25);
      }

      while (v27 == -1);
      v14 = __clz(__rbit64(~v27)) + (v25 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(*(v7 + 48) + 8 * v14) = v20;
    *(*(v7 + 56) + 8 * v14) = v21;
    ++*(v7 + 16);
  }

  v17 = v8 << 6;
  while (1)
  {
    v18 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v19 = *(v5 + 8 * v8 + 72);
    v17 += 64;
    ++v8;
    if (v19)
    {
      v11 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) + v17;
      v8 = v18;
      goto LABEL_14;
    }
  }

  if (v31)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  v3 = v2;
LABEL_28:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82DFF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1ED72F7E0, MEMORY[0x1E69E6158], &type metadata for TypeRegistry.TypeInfo, MEMORY[0x1E69E6168]);
  v36 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v35 = (v5 + 64);
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
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v21 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v22 = v21 | (v8 << 6);
LABEL_15:
    v26 = (*(v5 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v5 + 56) + 24 * v22;
    v30 = *v29;
    v38 = *(v29 + 8);
    v37 = *(v29 + 16);
    if ((v36 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v31)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v32 = *(v13 + 8 * v17);
      }

      while (v32 == -1);
      v18 = __clz(__rbit64(~v32)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 16 * v18);
    *v19 = v27;
    v19[1] = v28;
    v20 = *(v7 + 56) + 24 * v18;
    *v20 = v30;
    *(v20 + 8) = v38;
    *(v20 + 16) = v37;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      goto LABEL_15;
    }
  }

  if (v36)
  {
    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v35, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v35 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82E2B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF859E94(0, &qword_1EB63F668, type metadata accessor for RGResource, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
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
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v8 << 6);
LABEL_14:
      v20 = *(*(v5 + 48) + 8 * v16);
      v21 = *(*(v5 + 56) + 8 * v16);
      v22 = sub_1AFDFF278();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v13 + 8 * v25);
        }

        while (v27 == -1);
        v14 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v20;
      *(*(v7 + 56) + 8 * v14) = v21;
      ++*(v7 + 16);
    }

    v17 = v8 << 6;
    while (1)
    {
      v18 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v19 = *(v5 + 8 * v8 + 72);
      v17 += 64;
      ++v8;
      if (v19)
      {
        v11 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v8 = v18;
        goto LABEL_14;
      }
    }

    if (v30)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
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

uint64_t sub_1AF82E51C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF44657C(0);
  v34 = v4;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v33 = (v5 + 64);
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
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = (*(v5 + 48) + 16 * v21);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*(v5 + 56) + 8 * v21);
    if ((v34 & 1) == 0)
    {

      swift_unknownObjectRetain();
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v29)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v30 = *(v13 + 8 * v17);
      }

      while (v30 == -1);
      v18 = __clz(__rbit64(~v30)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 16 * v18);
    *v19 = v26;
    v19[1] = v27;
    *(*(v7 + 56) + 8 * v18) = v28;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v34)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82E7A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B5B0(0);
  v6 = sub_1AFDFE5A8();
  v8 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    goto LABEL_28;
  }

  v34 = v4;
  v9 = 0;
  v33 = (v5 + 64);
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
  v14 = v6 + 64;
  while (v12)
  {
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v9 << 6);
LABEL_14:
    *&v7 = *(*(v5 + 48) + 8 * v18);
    v35 = v7;
    v22 = (*(v5 + 56) + 16 * v18);
    v24 = *v22;
    v23 = v22[1];
    sub_1AFDFF288();
    sub_1AFDFF2C8();
    sub_1AFDFF2C8();
    v25 = sub_1AFDFF2F8();
    v26 = -1 << *(v8 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) != 0)
    {
      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v26) >> 6;
      do
      {
        if (v28 + 1 == v29)
        {
          v28 = 0;
        }

        else
        {
          ++v28;
        }

        v30 = *(v14 + 8 * v28);
      }

      while (v30 == -1);
      v15 = __clz(__rbit64(~v30)) + (v28 << 6);
    }

    *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *(&v7 + 1) = *(&v35 + 1);
    *(*(v8 + 48) + 8 * v15) = v35;
    v16 = (*(v8 + 56) + 16 * v15);
    *v16 = v24;
    v16[1] = v23;
    ++*(v8 + 16);
  }

  v19 = v9 << 6;
  while (1)
  {
    v20 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v21 = *(v5 + 8 * v9 + 72);
    v19 += 64;
    ++v9;
    if (v21)
    {
      v12 = (v21 - 1) & v21;
      v18 = __clz(__rbit64(v21)) + v19;
      v9 = v20;
      goto LABEL_14;
    }
  }

  if (v34)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  v3 = v2;
LABEL_28:
  *v3 = v8;
  return result;
}

uint64_t sub_1AF82EA24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF859E94(0, &qword_1EB630BC8, sub_1AF448148, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v38 = (v5 + 64);
  v39 = v3;
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
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v8 << 6);
    if (v4)
    {
LABEL_10:
      v18 = *(*(v5 + 48) + 8 * v17);
      v19 = (*(v5 + 56) + 144 * v17);
      v53 = v19[5];
      v54 = v19[6];
      v55[0] = v19[7];
      *(v55 + 9) = *(v19 + 121);
      v49 = v19[1];
      v50 = v19[2];
      v51 = v19[3];
      v52 = v19[4];
      v48 = *v19;
    }

    else
    {
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * v17);
      v23 = (*(v5 + 56) + 144 * v17);
      v40 = *v23;
      v24 = v23[4];
      v26 = v23[1];
      v25 = v23[2];
      v43 = v23[3];
      v44 = v24;
      v41 = v26;
      v42 = v25;
      v28 = v23[6];
      v27 = v23[7];
      v29 = v23[5];
      *&v47[9] = *(v23 + 121);
      v46 = v28;
      *v47 = v27;
      v45 = v29;
      sub_1AF85A058(&v40, &v48, sub_1AF448148);
      v54 = v46;
      v55[0] = *v47;
      *(v55 + 9) = *&v47[9];
      v50 = v42;
      v51 = v43;
      v52 = v44;
      v53 = v45;
      v48 = v40;
      v49 = v41;
    }

    v30 = sub_1AFDFF278();
    v31 = -1 << *(v7 + 32);
    v32 = v30 & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v13 + 8 * (v32 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v32) & ~*(v13 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = (63 - v31) >> 6;
      do
      {
        if (v33 + 1 == v34)
        {
          v33 = 0;
        }

        else
        {
          ++v33;
        }

        v35 = *(v13 + 8 * v33);
      }

      while (v35 == -1);
      v14 = __clz(__rbit64(~v35)) + (v33 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(*(v7 + 48) + 8 * v14) = v18;
    v15 = (*(v7 + 56) + 144 * v14);
    v15[5] = v53;
    v15[6] = v54;
    v15[7] = v55[0];
    *(v15 + 121) = *(v55 + 9);
    v15[1] = v49;
    v15[2] = v50;
    v15[3] = v51;
    v15[4] = v52;
    *v15 = v48;
    ++*(v7 + 16);
  }

  v20 = v8 << 6;
  while (1)
  {
    v21 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v22 = *(v5 + 8 * v8 + 72);
    v20 += 64;
    ++v8;
    if (v22)
    {
      v11 = (v22 - 1) & v22;
      v17 = __clz(__rbit64(v22)) + v20;
      v8 = v21;
      if (v4)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  if (v4)
  {
    v36 = 1 << *(v5 + 32);
    v3 = v39;
    if (v36 >= 64)
    {
      bzero(v38, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v38 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v39;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82EDB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF85B728(0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    goto LABEL_28;
  }

  v34 = v4;
  v35 = v3;
  v8 = 0;
  v33 = (v5 + 64);
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
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v8 << 6);
LABEL_14:
    v21 = *(v5 + 56) + 12 * v17;
    v22 = *(*(v5 + 48) + 8 * v17);
    v23 = *(v21 + 8);
    v24 = *v21;
    v25 = sub_1AFDFF278();
    v26 = -1 << *(v7 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v26) >> 6;
      do
      {
        if (v28 + 1 == v29)
        {
          v28 = 0;
        }

        else
        {
          ++v28;
        }

        v30 = *(v13 + 8 * v28);
      }

      while (v30 == -1);
      v14 = __clz(__rbit64(~v30)) + (v28 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(*(v7 + 48) + 8 * v14) = v22;
    v15 = *(v7 + 56) + 12 * v14;
    *v15 = v24;
    *(v15 + 8) = v23;
    ++*(v7 + 16);
  }

  v18 = v8 << 6;
  while (1)
  {
    v19 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v20 = *(v5 + 8 * v8 + 72);
    v18 += 64;
    ++v8;
    if (v20)
    {
      v11 = (v20 - 1) & v20;
      v17 = __clz(__rbit64(v20)) + v18;
      v8 = v19;
      goto LABEL_14;
    }
  }

  if (v34)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v35;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  v3 = v35;
LABEL_28:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82F018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AF859E94(0, &qword_1ED726B30, sub_1AF445EE0, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v4;
    v8 = 0;
    v32 = (v5 + 64);
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
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v8 << 6);
LABEL_14:
      v21 = *(*(v5 + 48) + 8 * v17);
      v22 = *(v5 + 56) + 24 * v17;
      v23 = *(v22 + 16);
      v34 = *v22;
      v24 = sub_1AFDFF278();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = (63 - v25) >> 6;
        do
        {
          if (v27 + 1 == v28)
          {
            v27 = 0;
          }

          else
          {
            ++v27;
          }

          v29 = *(v13 + 8 * v27);
        }

        while (v29 == -1);
        v14 = __clz(__rbit64(~v29)) + (v27 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v21;
      v15 = *(v7 + 56) + 24 * v14;
      *v15 = v34;
      *(v15 + 16) = v23;
      ++*(v7 + 16);
    }

    v18 = v8 << 6;
    while (1)
    {
      v19 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v20 = *(v5 + 8 * v8 + 72);
      v18 += 64;
      ++v8;
      if (v20)
      {
        v11 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v8 = v19;
        goto LABEL_14;
      }
    }

    if (v33)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero(v32, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v32 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF82F2A8(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), void (*a4)(unint64_t, _BYTE *), double a5)
{
  v47 = a4;
  v7 = v5;
  v8 = a2;
  v9 = sub_1AFDFE488();
  v10 = *(v9 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  a3(0, v11);
  v45 = v8;
  v15 = sub_1AFDFE5A8();
  v16 = v15;
  if (!*(v14 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v48 = v13;
  v17 = 0;
  v18 = *(v14 + 64);
  v41 = (v14 + 64);
  v42 = v5;
  v19 = 1 << *(v14 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v43 = (v10 + 16);
  v44 = v10;
  v46 = (v10 + 32);
  v23 = v15 + 64;
  v49 = v9;
  while (v21)
  {
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = v25 | (v17 << 6);
LABEL_14:
    v30 = *(v10 + 72);
    v31 = *(v14 + 48) + v30 * v26;
    if (v45)
    {
      (*v46)(v48, v31, v49);
      v47(*(v14 + 56) + 32 * v26, v50);
    }

    else
    {
      (*v43)(v48, v31, v49);
      sub_1AF0D5A54(*(v14 + 56) + 32 * v26, v50);
    }

    v32 = sub_1AFDFCCF8();
    v33 = -1 << *(v16 + 32);
    v34 = v32 & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v23 + 8 * (v34 >> 6))) != 0)
    {
      v24 = __clz(__rbit64((-1 << v34) & ~*(v23 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v10 = v44;
    }

    else
    {
      v36 = (63 - v33) >> 6;
      v10 = v44;
      do
      {
        if (v35 + 1 == v36)
        {
          v35 = 0;
        }

        else
        {
          ++v35;
        }

        v37 = *(v23 + 8 * v35);
      }

      while (v37 == -1);
      v24 = __clz(__rbit64(~v37)) + (v35 << 6);
    }

    *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    (*v46)((*(v16 + 48) + v30 * v24), v48, v49);
    v47(v50, (*(v16 + 56) + 32 * v24));
    ++*(v16 + 16);
  }

  v27 = v17 << 6;
  while (1)
  {
    v28 = v17 + 1;
    if (v17 + 1 >= v22)
    {
      break;
    }

    v29 = *(v14 + 8 * v17 + 72);
    v27 += 64;
    ++v17;
    if (v29)
    {
      v21 = (v29 - 1) & v29;
      v26 = __clz(__rbit64(v29)) + v27;
      v17 = v28;
      goto LABEL_14;
    }
  }

  if (v45)
  {
    v38 = 1 << *(v14 + 32);
    v7 = v42;
    if (v38 >= 64)
    {
      bzero(v41, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v41 = -1 << v38;
    }

    *(v14 + 16) = 0;
    goto LABEL_30;
  }

  v7 = v42;
LABEL_31:
  *v7 = v16;
  return result;
}