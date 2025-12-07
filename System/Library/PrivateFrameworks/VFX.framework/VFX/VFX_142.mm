void sub_1AFBDFFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v12 = *a12;
  if (!*(*a12 + 16))
  {
    return;
  }

  v19 = sub_1AF419914(a1, a2);
  if ((v20 & 1) == 0)
  {
    return;
  }

  v21 = (*(v12 + 56) + 32 * v19);
  if (v21[3] != 28 || !*(v12 + 16))
  {
    return;
  }

  v22 = *v21;
  v81 = v21[1];
  swift_unknownObjectRetain();
  v23 = sub_1AF419914(a3, a4);
  if ((v24 & 1) == 0)
  {
    goto LABEL_18;
  }

  v83 = v22;
  v25 = (*(v12 + 56) + 32 * v23);
  if (v25[3] != 28 || !*(v12 + 16))
  {
    goto LABEL_18;
  }

  v26 = *v25;
  v79 = v25[1];
  swift_unknownObjectRetain();
  v27 = sub_1AF419914(a5, a6);
  if ((v28 & 1) == 0)
  {
    goto LABEL_17;
  }

  v29 = (*(v12 + 56) + 32 * v27);
  if (v29[3] != 28 || !*(v12 + 16))
  {
    goto LABEL_17;
  }

  v78 = v26;
  v30 = *v29;
  v75 = v29[1];
  swift_unknownObjectRetain();
  v31 = sub_1AF419914(a7, a8);
  if ((v32 & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_17:
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v77 = v30;
  v33 = (*(v12 + 56) + 32 * v31);
  if (v33[3] == 28)
  {
    v34 = *v33;
    v70 = v33[1];
    v35 = a12[2];
    v36 = a12[3];
    v86 = a12[1];
    v87 = v35;
    v74 = v34;
    swift_unknownObjectRetain();

    MEMORY[0x1B2718AE0](45, 0xE100000000000000);
    MEMORY[0x1B2718AE0](a9, a10);
    v71 = v36;
    v72 = v86;
    v37 = 16 * v36;
    v38 = v35;
    v39 = *(a11 + 16);
    v40 = v37;

    BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v39, v40, 0);
    if (BufferWithLength)
    {
      v69 = v40;
      v42 = BufferWithLength;
      v43 = sub_1AFDFCEC8();

      v73 = v42;
      [v42 setLabel_];

      if ([swift_unknownObjectRetain() storageMode] == 2)
      {
        swift_unknownObjectRelease();
        v82 = 0;
      }

      else
      {
        v50 = [v83 contents];
        v51 = v83;
        v82 = &v81[v50];
      }

      if ([swift_unknownObjectRetain() storageMode] == 2)
      {
        swift_unknownObjectRelease();
        v80 = 0;
      }

      else
      {
        v52 = [v78 contents];
        v53 = v78;
        v80 = &v79[v52];
      }

      if ([swift_unknownObjectRetain() storageMode] == 2)
      {
        swift_unknownObjectRelease();
        v76 = 0;
      }

      else
      {
        v54 = [v77 contents];
        v55 = v77;
        v76 = &v75[v54];
      }

      if ([swift_unknownObjectRetain() storageMode] == 2)
      {
        swift_unknownObjectRelease();
        v56 = 0;
      }

      else
      {
        v57 = [v74 contents];
        v58 = v74;
        v56 = &v70[v57];
      }

      if ([swift_unknownObjectRetain() storageMode] == 2)
      {
        swift_unknownObjectRelease();
        v59 = 0;
      }

      else
      {
        v59 = [v73 contents];
        v60 = v73;
      }

      v61 = v71;
      v63 = v80;
      v62 = v82;
      for (i = v76; v61; --v61)
      {
        v65 = *v62;
        v62 += 4;
        LODWORD(v66) = v65;
        DWORD1(v66) = *v63;
        v63 += 4;
        DWORD2(v66) = *i;
        i += 4;
        HIDWORD(v66) = *v56;
        v56 += 4;
        *v59++ = v66;
      }

      sub_1AF8264B8(0, 0, 0, 0, a1, a2);

      sub_1AF8264B8(0, 0, 0, 0, a3, a4);

      sub_1AF8264B8(0, 0, 0, 0, a5, a6);

      sub_1AF8264B8(0, 0, 0, 0, a7, a8);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = *a12;
      sub_1AF85917C(v73, 0, v69, 31, a9, a10, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      *a12 = v86;
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v87 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
      MEMORY[0x1B2718AE0](v86, v38);

      MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
      v44 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v44);

      MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
      type metadata accessor for MTLResourceOptions(0);
      sub_1AFDFE458();
      v45 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v68 = v45;
        swift_once();
        v45 = v68;
      }

      v86 = 0;
      sub_1AF0D4F18(v45, &v86, 0, 0xE000000000000000);

      v86 = 0;
      v87 = 0xE000000000000000;
      sub_1AFDFE218();

      v86 = 0xD000000000000010;
      v87 = 0x80000001AFF4AEC0;
      MEMORY[0x1B2718AE0](v72, v38);
      MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AEE0);
      v46 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v46);

      v47 = v86;
      v48 = v87;
      v49 = sub_1AFDFDA08();
      v86 = 0;
      sub_1AF0D4F18(v49, &v86, v47, v48);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    return;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_18:

  swift_unknownObjectRelease();
}

void sub_1AFBE07CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v12 = *a12;
  if (!*(*a12 + 16))
  {
    return;
  }

  v18 = sub_1AF419914(a1, a2);
  if ((v19 & 1) == 0)
  {
    return;
  }

  v20 = (*(v12 + 56) + 32 * v18);
  if (v20[3] != 45 || !*(v12 + 16))
  {
    return;
  }

  v21 = *v20;
  v100 = v20[1];
  swift_unknownObjectRetain();
  v22 = sub_1AF419914(a3, a4);
  if ((v23 & 1) == 0)
  {
    goto LABEL_15;
  }

  v104 = v21;
  v24 = (*(v12 + 56) + 32 * v22);
  if (v24[3] != 45 || !*(v12 + 16))
  {
    goto LABEL_15;
  }

  v25 = *v24;
  v96 = v24[1];
  swift_unknownObjectRetain();
  v26 = sub_1AF419914(a5, a6);
  if ((v27 & 1) == 0 || (v28 = (*(v12 + 56) + 32 * v26), v28[3] != 45))
  {
    swift_unknownObjectRelease();
LABEL_15:

    swift_unknownObjectRelease();
    return;
  }

  v90 = v25;
  v29 = *v28;
  v85 = v28[1];
  v30 = a12[2];
  v31 = a12[3];
  v108 = a12[1];
  v109 = v30;
  v91 = v29;
  swift_unknownObjectRetain();

  MEMORY[0x1B2718AE0](45, 0xE100000000000000);
  MEMORY[0x1B2718AE0](a9, a10);
  v92 = v108;
  v88 = v31;
  v32 = *(a11 + 16);
  v33 = v109;

  v87 = 16 * v31;
  BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v32, 16 * v31, 0);
  if (BufferWithLength)
  {
    v35 = BufferWithLength;
    v36 = sub_1AFDFCEC8();

    [v35 setLabel_];

    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v101 = 0;
    }

    else
    {
      v43 = [v104 contents];
      v44 = v104;
      v101 = &v100[v43];
    }

    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v97 = 0;
    }

    else
    {
      v45 = [v90 contents];
      v46 = v90;
      v97 = &v96[v45];
    }

    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v93 = 0;
    }

    else
    {
      v47 = [v91 contents];
      v48 = v91;
      v93 = &v85[v47];
    }

    v49 = v88;
    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v86 = 0;
    }

    else
    {
      v86 = [v35 contents];
      v50 = v35;
    }

    v84 = v35;
    if (a8 && *(v12 + 16))
    {

      v51 = sub_1AF419914(a7, a8);
      if (v52)
      {
        v53 = *(v12 + 56) + 32 * v51;
        if (*(v53 + 24) == 28)
        {
          v54 = *v53;
          v55 = *(v53 + 8);
          if ([swift_unknownObjectRetain_n() storageMode] == 2)
          {
            swift_unknownObjectRelease();
            v56 = 0;
          }

          else
          {
            v72 = [v54 contents];
            v73 = v54;
            v56 = &v72[v55];
          }

          v74 = v88;
          v75 = v101;
          v76 = v97;
          v77 = v93;
          for (i = v86; v74; --v74)
          {
            v99 = v56;
            v103 = v75 + 1;
            v94 = sub_1AFBE4594(*v75);
            v79 = *v76++;
            v89 = sub_1AFBE4594(v79);
            v80 = *v77++;
            v81 = sub_1AFBE4594(v80);
            v75 = v103;
            *&v82 = __PAIR64__(LODWORD(v89), LODWORD(v94));
            *(&v82 + 2) = v81;
            HIDWORD(v82) = *v99;
            v56 = v99 + 4;
            *i++ = v82;
          }

          sub_1AF8264B8(0, 0, 0, 0, a7, a8);
          swift_unknownObjectRelease();
LABEL_43:

          sub_1AF8264B8(0, 0, 0, 0, a1, a2);

          sub_1AF8264B8(0, 0, 0, 0, a3, a4);

          sub_1AF8264B8(0, 0, 0, 0, a5, a6);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108 = *a12;
          sub_1AF85917C(v84, 0, v87, 31, a9, a10, isUniquelyReferenced_nonNull_native);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          *a12 = v108;
          return;
        }
      }
    }

    v57 = v101;
    v58 = v97;
    v59 = v93;
    v60 = v86;
    if (v88)
    {
      __asm { FMOV            V0.4S, #1.0 }

      v95 = HIDWORD(_Q0);
      do
      {
        v66 = *v57++;
        v102 = sub_1AFBE4594(v66);
        v67 = *v58++;
        v98 = sub_1AFBE4594(v67);
        v68 = *v59++;
        v69 = sub_1AFBE4594(v68);
        *&v70 = __PAIR64__(LODWORD(v98), LODWORD(v102));
        *(&v70 + 1) = __PAIR64__(v95, LODWORD(v69));
        *v60++ = v70;
        --v49;
      }

      while (v49);
    }

    goto LABEL_43;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v109 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
  MEMORY[0x1B2718AE0](v108, v33);

  MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
  v37 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v37);

  MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
  type metadata accessor for MTLResourceOptions(0);
  sub_1AFDFE458();
  v38 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v83 = v38;
    swift_once();
    v38 = v83;
  }

  v108 = 0;
  sub_1AF0D4F18(v38, &v108, 0, 0xE000000000000000);

  v108 = 0;
  v109 = 0xE000000000000000;
  sub_1AFDFE218();

  v108 = 0xD000000000000010;
  v109 = 0x80000001AFF4AEC0;
  MEMORY[0x1B2718AE0](v92, v33);
  MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AEE0);
  v39 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v39);

  v40 = v108;
  v41 = v109;
  v42 = sub_1AFDFDA08();
  v108 = 0;
  sub_1AF0D4F18(v42, &v108, v40, v41);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_1AFBE1028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v285 = a5;
  v275 = a2;
  sub_1AF0D4E74(0);
  v289 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v288 = &v266 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = sub_1AFDFC298();
  v10 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287);
  v286 = &v266 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295.i64[0] = sub_1AFDFDCB8();
  v12 = *(v295.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v295.i64[0]);
  v294.i64[0] = &v266 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AFDFBCE8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v301.i64[0] = &v266 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v278 = &v266 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299.i64[0] = a1;
  v19 = sub_1AF7580D0();
  if (!v20)
  {
    goto LABEL_96;
  }

  if (v19 == 7957616 && v20 == 0xE300000000000000)
  {

    goto LABEL_6;
  }

  v21 = sub_1AFDFEE28();

  if ((v21 & 1) == 0)
  {
LABEL_96:
    sub_1AFBDC8FC();
    swift_allocError();
    *v106 = 0;
    v106[1] = 0;
    return swift_willThrow();
  }

LABEL_6:
  v290 = v14;
  v296.i64[0] = v10;
  *&v274 = a3;
  *(&v274 + 1) = a4;
  v300.i64[0] = 0;
  v22 = *(v299.i64[0] + 8);
  v298.i64[0] = *v299.i64[0];
  v280 = v22 - v298.i64[0];
  v284 = v15 + 8;
  v297.i64[0] = 0x80000001AFF4B180;
  LODWORD(v293) = *MEMORY[0x1E696A028];
  v292 = (v12 + 104);
  v291 = (v12 + 8);
  *&v282 = 0x80000001AFF4AEC0;
  v276 = "Failed creating ";
  v281 = MEMORY[0x1E69E7CC0];
  v277 = 0xE000000000000000;
  v23 = 0;
  LODWORD(v283) = 5;
  v24 = 0x1E696A000;
LABEL_7:
  v279 = v23;
LABEL_36:
  v48 = v298.i64[0];
  while (1)
  {
    v25 = *(v299.i64[0] + 16);
    if (v48)
    {
      v26 = v280;
      if (v25 >= v280)
      {
        goto LABEL_98;
      }
    }

    else
    {
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_98;
      }

      v26 = 0;
    }

    v27 = *(v299.i64[0] + 16);
    while (*(v48 + v27) != *(v299.i64[0] + 24))
    {
      if (v26 == ++v27)
      {
        v27 = v26;
        break;
      }
    }

    *&v306 = *(v299.i64[0] + 16);
    *(&v306 + 1) = v27;
    *&v307 = v48;
    *(&v307 + 1) = v26;
    sub_1AFDFCF68();
    sub_1AF7582E0(0);
    sub_1AFBE453C();
    v28 = sub_1AFDFCF28();
    if (!v29)
    {
      goto LABEL_98;
    }

    v30 = v28;
    v31 = v29;

    v32 = sub_1AFDFD048();

    v33 = v25 + v32 + 1;
    *(v299.i64[0] + 16) = v33;
    v34 = objc_allocWithZone(*(v24 + 3720));
    v35 = sub_1AFDFCEC8();
    v36 = [v34 initWithString_];

    sub_1AFDFDC98();
    if (v37)
    {

      goto LABEL_36;
    }

    sub_1AFDFDC98();
    if (v38)
    {
      break;
    }

    sub_1AFDFDC98();
    if (!v39)
    {
      sub_1AFDFDC98();
      if (!v49)
      {

        sub_1AFDFDC98();
        if (!v55)
        {
LABEL_49:

LABEL_50:
          v23 = v279;
          goto LABEL_7;
        }

        if (v283)
        {
          if (v283 == 5)
          {

            v54 = 5;
LABEL_47:
            LODWORD(v283) = v54;
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        v61 = v301.i64[0];
        sub_1AFDFBC88();
        v62 = sub_1AFDFDCA8();
        v64 = v63;
        v65 = *v284;
        v66 = v290;
        (*v284)(v61, v290);
        if (v64)
        {
          v283 = v62;
          sub_1AFDFBC88();
          v273 = sub_1AFDFDCA8();
          v68 = v67;
          v65(v61, v66);
          if (v68)
          {
            v69 = sub_1AFBDEC48(v283, v64);

            v306 = v274;

            MEMORY[0x1B2718AE0](45, 0xE100000000000000);
            v70 = v68;
            MEMORY[0x1B2718AE0](v273, v68);
            v71 = v306;
            v72 = sub_1AF471A88(v69);
            v73 = v72 * v279;
            v74 = sub_1AF6F35A0(v72 * v279, 0, v71, *(&v71 + 1));
            v272 = v75;
            v271 = v76;
            if (!v74)
            {

              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              *&v306 = 0xD000000000000010;
              *(&v306 + 1) = v282;
              MEMORY[0x1B2718AE0](v71, *(&v71 + 1));
              MEMORY[0x1B2718AE0](0xD000000000000013, v276 | 0x8000000000000000);
              v304 = v73;
              v97 = sub_1AFDFEA08();
              MEMORY[0x1B2718AE0](v97);

              v98 = v306;
              v99 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                v105 = v99;
                swift_once();
                v99 = v105;
              }

              *&v306 = 0;
              sub_1AF0D4F18(v99, &v306, v98, *(&v98 + 1));

              LODWORD(v283) = 0;
              goto LABEL_95;
            }

            v77 = v74;

            v270 = v70;
            v269 = v69;
            if (v69 == 28)
            {
              if ([swift_unknownObjectRetain() storageMode] != 2)
              {
                v87 = [v77 contents];
                v88 = v77;
                v82 = 0;
                v268 = 0;
                v83 = 0;
                v80 = &v87[v272];
                v267 = v271 / 4;
                goto LABEL_74;
              }
            }

            else
            {
              if (v69 != 45)
              {
                v267 = 0;
                v80 = 0;
                v268 = 0;
                v83 = 0;
                v82 = 1;
                v81 = 1;
                v86 = v281;
LABEL_76:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v86 = sub_1AF42819C(0, v86[2] + 1, 1, v86);
                }

                v281 = v86;
                v90 = v86[2];
                v89 = v86[3];
                if (v90 >= v89 >> 1)
                {
                  v281 = sub_1AF42819C(v89 > 1, v90 + 1, 1, v281);
                }

                LODWORD(v283) = 0;
                LOBYTE(v304) = v82;
                LOBYTE(v302) = v81;
                v91 = v281;
                v281[2] = v90 + 1;
                v92 = &v91[12 * v90];
                v93 = v270;
                v92[4] = v273;
                v92[5] = v93;
                v94 = v272;
                v92[6] = v77;
                v92[7] = v94;
                v95 = v269;
                v92[8] = v271;
                v92[9] = v95;
                v96 = v267;
                v92[10] = v80;
                v92[11] = v96;
                *(v92 + 96) = v304;
                LODWORD(v96) = *(&v306 + 3);
                *(v92 + 97) = v306;
                *(v92 + 25) = v96;
                v92[13] = v268;
                v92[14] = v83;
                *(v92 + 120) = v302;
                v23 = v279;
                v24 = 0x1E696A000;
                goto LABEL_7;
              }

              if ([swift_unknownObjectRetain() storageMode] != 2)
              {
                v78 = [v77 contents];
                v79 = v77;
                v267 = 0;
                v80 = 0;
                v81 = 0;
                v268 = &v78[v272];
                v82 = 1;
                v83 = v271;
LABEL_75:
                v86 = v281;
                goto LABEL_76;
              }
            }

            swift_unknownObjectRelease();
            v267 = 0;
            v80 = 0;
            v268 = 0;
            v83 = 0;
            v82 = 1;
LABEL_74:
            v81 = 1;
            goto LABEL_75;
          }
        }

        LODWORD(v283) = 0;
        goto LABEL_50;
      }

      v50 = v301.i64[0];
      sub_1AFDFBC88();
      v51 = sub_1AFDFDCA8();
      v53 = v52;
      (*v284)(v50, v290);
      if (!v53)
      {

        goto LABEL_49;
      }

      if (v51 == 1701011814 && v53 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {

        v54 = 1;
        goto LABEL_47;
      }

      if (v51 == 0x786574726576 && v53 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {

        v56 = v294.i64[0];
        v57 = v295.i64[0];
        (*v292)(v294.i64[0], v293, v295.i64[0]);
        v58 = sub_1AFDFDCC8();
        v60 = v59;

        (*v291)(v56, v57);
        LODWORD(v283) = 0;
        if (v60)
        {
          v23 = 0;
        }

        else
        {
          v23 = v58;
        }

        goto LABEL_7;
      }

      if (v51 == 0x6E6F6973726576 && v53 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {

        v84 = v294.i64[0];
        v85 = v295.i64[0];
        (*v292)(v294.i64[0], v293, v295.i64[0]);
        sub_1AFDFDCC8();

        (*v291)(v84, v85);
        LODWORD(v283) = 2;
        goto LABEL_50;
      }

      if (v51 == 0x69736E6972746E69 && v53 == 0xE900000000000063 || (sub_1AFDFEE28() & 1) != 0)
      {

        v100 = v294.i64[0];
        v101 = v295.i64[0];
        (*v292)(v294.i64[0], v293, v295.i64[0]);
        sub_1AFDFDCC8();

        (*v291)(v100, v101);
        v102 = 3;
      }

      else
      {
        if ((v51 != 0x69736E6972747865 || v53 != 0xE900000000000063) && (sub_1AFDFEE28() & 1) == 0)
        {

          *&v306 = v51;
          *(&v306 + 1) = v53;
          MEMORY[0x1B2718AE0](0xD000000000000028, 0x80000001AFF4B1D0);
LABEL_210:
          MEMORY[0x1B2718AE0](v30, v31);

          MEMORY[0x1B2718AE0](39, 0xE100000000000000);
          v251 = v306;
          sub_1AFBDC8FC();
          swift_allocError();
          *v252 = v251;
          swift_willThrow();
        }

        v103 = v294.i64[0];
        v104 = v295.i64[0];
        (*v292)(v294.i64[0], v293, v295.i64[0]);
        sub_1AFDFDCC8();

        (*v291)(v103, v104);
        v102 = 4;
      }

      LODWORD(v283) = v102;
LABEL_95:
      v23 = v279;
      goto LABEL_7;
    }

    v40 = v301.i64[0];
    sub_1AFDFBC88();
    v41 = sub_1AFDFDCA8();
    v43 = v42;
    (*v284)(v40, v290);

    if (v43)
    {
      if (v41 == 0x6969637361 && v43 == 0xE500000000000000)
      {
        v277 = 0xE500000000000000;
        v300.i64[0] = 0x6969637361;
        goto LABEL_32;
      }
    }

    else
    {
      v41 = 0;
      v43 = 0xE000000000000000;
    }

    v44 = sub_1AFDFEE28();
    v300.i64[0] = v41;
    if (v44)
    {
      goto LABEL_31;
    }

    if (v41 != 0xD000000000000014 || v297.i64[0] != v43)
    {
      if ((sub_1AFDFEE28() & 1) == 0)
      {

        *&v306 = 0xD000000000000015;
        *(&v306 + 1) = 0x80000001AFF4B200;
        MEMORY[0x1B2718AE0](v300.i64[0], v43);
        MEMORY[0x1B2718AE0](39, 0xE100000000000000);
        v263 = v306;
        sub_1AFBDC8FC();
        swift_allocError();
        *v264 = v263;
        swift_willThrow();
      }

LABEL_31:
      v277 = v43;
      goto LABEL_32;
    }

    v277 = v43;
    v300.i64[0] = 0xD000000000000014;
LABEL_32:
    v45 = v294.i64[0];
    v46 = v295.i64[0];
    (*v292)(v294.i64[0], v293, v295.i64[0]);
    v47 = sub_1AFDFDCD8();
    (*v291)(v45, v46);
    if ((v47 & 0x100000000) != 0 || *&v47 != 1.0)
    {

      *&v306 = 0xD000000000000010;
      *(&v306 + 1) = 0x80000001AFF4AF40;
      goto LABEL_210;
    }

    v48 = v298.i64[0];
    v24 = 0x1E696A000uLL;
  }

  v48 = v298.i64[0];
  v25 = v33;
LABEL_98:
  v108 = v300.i64[0];
  if ((v300.i64[0] != 0x6969637361 || v277 != 0xE500000000000000) && (sub_1AFDFEE28() & 1) == 0)
  {
    if (v108 == 0xD000000000000014 && v297.i64[0] == v277)
    {
      v109 = v279;
      if (!v279)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v188 = sub_1AFDFEE28();
      v109 = v279;
      if ((v188 & 1) == 0 || !v279)
      {
        goto LABEL_143;
      }
    }

    v189 = 0;
    v190 = v281[2];
    v291 = (v281 + 4);
    v295.i64[0] = "ecute+JavaScript.swift";
    v294.i64[0] = v296.i64[0] + 32;
    v293 = xmmword_1AFE431C0;
    v292 = v190;
    while (1)
    {
      v300.i64[0] = v25;
      if (v190)
      {
        break;
      }

LABEL_171:
      ++v189;
      v109 = v279;
      v25 = v300.i64[0];
      v190 = v292;
      if (v189 == v279)
      {
        goto LABEL_143;
      }
    }

    v191 = v291;
    v296.i64[0] = v189;
    while (1)
    {
      v194 = *v191;
      v307 = v191[1];
      v196 = v191[3];
      v195 = v191[4];
      v197 = *(v191 + 73);
      v308 = v191[2];
      v309 = v196;
      v306 = v194;
      *&v310[9] = v197;
      *v310 = v195;
      v198 = *(&v194 + 1);
      v199 = *(&v308 + 1);
      v200 = v194;
      sub_1AFBE4478(&v306, &v304);
      sub_1AFBE4478(&v306, &v304);
      swift_unknownObjectRelease();

      if (v199 == 28)
      {
        v192 = v309;
        v193 = *(v298.i64[0] + v300.i64[0]);
        v300.i64[0] += 4;
        *(v299.i64[0] + 16) = v300.i64[0];
        sub_1AFBE4478(&v306, &v304);

        swift_unknownObjectRelease();
        *(v192 + 4 * v189) = v193;
      }

      else
      {
        if (v199 != 45)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v304 = 0;
          v305 = 0xE000000000000000;
          sub_1AFDFE218();
          v302 = v304;
          v303 = v305;
          MEMORY[0x1B2718AE0](0xD000000000000011, v295.i64[0] | 0x8000000000000000);
          sub_1AFBE4478(&v306, &v304);
          swift_unknownObjectRelease();

          v304 = v199;
          type metadata accessor for MTLVertexFormat(0);
          sub_1AFDFE458();
          MEMORY[0x1B2718AE0](0x20726F6620, 0xE500000000000000);
          MEMORY[0x1B2718AE0](v200, v198);
          v203 = v302;
          v204 = v303;
          v205 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            swift_once();
          }

          if (qword_1ED730E98 != -1)
          {
            swift_once();
          }

          v206 = qword_1ED73B890;
          sub_1AF6EFB60(0);
          v207 = swift_allocObject();
          *(v207 + 16) = v293;
          *(v207 + 56) = MEMORY[0x1E69E6158];
          *(v207 + 64) = sub_1AF0D544C();
          *(v207 + 32) = v203;
          *(v207 + 40) = v204;

          sub_1AFDFC4C8(v205, &dword_1AF0CE000, v206, "%{public}s", 10, 2, v207);

          v301.i64[0] = v204;
          v297.i64[0] = v203;
          v208 = v286;
          sub_1AFDFC288();
          v209 = v289[12];
          v210 = v289[16];
          v211 = v288;
          v212 = &v288[v289[20]];
          (*v294.i64[0])(v288, v208, v287);
          *(v211 + v209) = v205;
          *(v211 + v210) = 0;
          v213 = v301.i64[0];
          *v212 = v297.i64[0];
          *(v212 + 1) = v213;
          sub_1AFDFC608();

          sub_1AFBE44DC(&v306, sub_1AF4433E4);
          sub_1AFBE44DC(v211, sub_1AF0D4E74);
          v189 = v296.i64[0];
          goto LABEL_176;
        }

        v201 = *&v310[8];
        v202 = *(v298.i64[0] + v300.i64[0]++);
        *(v299.i64[0] + 16) = v300.i64[0];
        sub_1AFBE4478(&v306, &v304);

        swift_unknownObjectRelease();
        *(v201 + v189) = v202;
      }

      sub_1AFBE44DC(&v306, sub_1AF4433E4);
LABEL_176:
      v191 += 6;
      v190 = (v190 - 1);
      if (!v190)
      {
        goto LABEL_171;
      }
    }
  }

  v109 = v279;
  if (v279)
  {
    v297.i64[0] = 0;
    v276 = (v281 + 4);
    v284 = "ecute+JavaScript.swift";
    v283 = (v296.i64[0] + 32);
    v282 = xmmword_1AFE431C0;
    v109 = v279;
    while (1)
    {
      if (v48)
      {
        v110 = v280;
        if (v25 >= v280)
        {
          break;
        }
      }

      else
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          break;
        }

        v110 = 0;
      }

      v111 = v25;
      if (v25 != v110)
      {
        v111 = v25;
        while (*(v48 + v111) != *(v299.i64[0] + 24))
        {
          if (v110 == ++v111)
          {
            v111 = v110;
            break;
          }
        }
      }

      *&v306 = v25;
      *(&v306 + 1) = v111;
      *&v307 = v48;
      *(&v307 + 1) = v110;
      sub_1AFDFCF68();
      sub_1AF7582E0(0);
      sub_1AFBE453C();
      sub_1AFDFCF28();
      if (!v112)
      {
        break;
      }

      v300.i64[0] = v25 + sub_1AFDFD048() + 1;
      *(v299.i64[0] + 16) = v300.i64[0];
      v113 = objc_allocWithZone(*(v24 + 3720));
      v114 = sub_1AFDFCEC8();

      v115 = [v113 initWithString_];

      v116 = v281[2];
      if (v116)
      {
        v296.i64[0] = v115;
        v117 = v116 - 1;
        for (i = v276; ; i += 6)
        {
          v119 = *i;
          v307 = i[1];
          v121 = i[3];
          v120 = i[4];
          v122 = *(i + 73);
          v308 = i[2];
          v309 = v121;
          v306 = v119;
          *&v310[9] = v122;
          *v310 = v120;
          v123 = *(&v119 + 1);
          v124 = *(&v308 + 1);
          v125 = v119;
          sub_1AFBE4478(&v306, &v304);
          sub_1AFBE4478(&v306, &v304);
          swift_unknownObjectRelease();

          v301.i64[0] = v117;
          if (v124 == 45)
          {
            break;
          }

          if (v124 == 28)
          {
            v126 = v294.i64[0];
            v127 = v295.i64[0];
            (*v292)(v294.i64[0], v293, v295.i64[0]);
            v128 = sub_1AFDFDCD8();
            (*v291)(v126, v127);
            if ((v128 & 0x100000000) != 0)
            {
              v129 = 0.0;
            }

            else
            {
              v129 = *&v128;
            }

            v130 = v309;
            sub_1AFBE4478(&v306, &v304);

            swift_unknownObjectRelease();
            *(v130 + 4 * v297.i64[0]) = v129;
LABEL_127:
            sub_1AFBE44DC(&v306, sub_1AF4433E4);
            goto LABEL_135;
          }

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v304 = 0;
          v305 = 0xE000000000000000;
          sub_1AFDFE218();
          v302 = v304;
          v303 = v305;
          MEMORY[0x1B2718AE0](0xD000000000000011, v284 | 0x8000000000000000);
          sub_1AFBE4478(&v306, &v304);
          swift_unknownObjectRelease();

          v304 = v124;
          type metadata accessor for MTLVertexFormat(0);
          sub_1AFDFE458();
          MEMORY[0x1B2718AE0](0x20726F6620, 0xE500000000000000);
          MEMORY[0x1B2718AE0](v125, v123);
          v137 = v302;
          v138 = v303;
          v139 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            swift_once();
          }

          if (qword_1ED730E98 != -1)
          {
            swift_once();
          }

          v140 = qword_1ED73B890;
          sub_1AF6EFB60(0);
          v141 = swift_allocObject();
          *(v141 + 16) = v282;
          *(v141 + 56) = MEMORY[0x1E69E6158];
          *(v141 + 64) = sub_1AF0D544C();
          *(v141 + 32) = v137;
          *(v141 + 40) = v138;

          sub_1AFDFC4C8(v139, &dword_1AF0CE000, v140, "%{public}s", 10, 2, v141);

          v142 = v286;
          sub_1AFDFC288();
          v290 = v289[12];
          v143 = v289[16];
          v144 = v288;
          v145 = v138;
          v146 = v137;
          v147 = &v288[v289[20]];
          (*v283)(v288, v142, v287);
          *(v144 + v290) = v139;
          *(v144 + v143) = 0;
          *v147 = v146;
          *(v147 + 1) = v145;
          sub_1AFDFC608();

          sub_1AFBE44DC(&v306, sub_1AF4433E4);
          sub_1AFBE44DC(v144, sub_1AF0D4E74);
LABEL_135:
          if (!v301.i64[0])
          {

            v109 = v279;
            v24 = 0x1E696A000uLL;
            goto LABEL_104;
          }

          v117 = v301.i64[0] - 1;
        }

        v131 = v294.i64[0];
        v132 = v295.i64[0];
        (*v292)(v294.i64[0], v293, v295.i64[0]);
        v133 = sub_1AFDFDCC8();
        v135 = v134;
        (*v291)(v131, v132);
        v136 = *&v310[8];
        if (v135)
        {
          v133 = 0;
        }

        sub_1AFBE4478(&v306, &v304);

        swift_unknownObjectRelease();
        *(v136 + v297.i64[0]) = v133;
        goto LABEL_127;
      }

LABEL_104:
      ++v297.i64[0];
      v48 = v298.i64[0];
      v25 = v300.i64[0];
      if (v297.i64[0] == v109)
      {
        goto LABEL_143;
      }
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v306 = 0;
    *(&v306 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v306 = 0xD000000000000027;
    *(&v306 + 1) = 0x80000001AFF4B1A0;
    v304 = v297.i64[0];
    v148 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v148);

    MEMORY[0x1B2718AE0](47, 0xE100000000000000);
    v304 = v109;
    v149 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v149);

    v150 = v306;
    v151 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v265 = v151;
      swift_once();
      v151 = v265;
    }

    *&v306 = 0;
    sub_1AF0D4F18(v151, &v306, v150, *(&v150 + 1));
  }

LABEL_143:
  v152 = v285;
  *(v285 + 1) = v274;
  v152[3] = v109;

  v153 = v281;
  v154 = v281[2];
  if (v154)
  {
    v301.i64[0] = v154 - 1;
    for (j = 32; ; j = v300.i64[0] + 96)
    {
      v300.i64[0] = j;
      v156 = (v153 + j);
      v157 = *v156;
      v307 = v156[1];
      v159 = v156[3];
      v158 = v156[4];
      v160 = *(v156 + 73);
      v308 = v156[2];
      v309 = v159;
      v306 = v157;
      *&v310[9] = v160;
      *v310 = v158;
      v161 = v307;
      v162 = v308;
      v163 = v157;
      sub_1AFBE4478(&v306, &v304);
      sub_1AFBE4478(&v306, &v304);
      swift_unknownObjectRelease();
      sub_1AFBE4478(&v306, &v304);

      v164 = v285;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v304 = *v164;
      v166 = v304;
      *v164 = 0x8000000000000000;
      v167 = sub_1AF419914(v163, *(&v163 + 1));
      v169 = v168;
      v170 = *(v166 + 16) + ((v168 & 1) == 0);
      if (*(v166 + 24) >= v170)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v176 = v167;
          sub_1AF84FE04();
          v167 = v176;
        }
      }

      else
      {
        sub_1AF841984(v170, isUniquelyReferenced_nonNull_native);
        v167 = sub_1AF419914(v163, *(&v163 + 1));
        if ((v169 & 1) != (v171 & 1))
        {
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }
      }

      v153 = v281;
      if (v169)
      {
        v172 = v167;

        v173 = v304;
        v174 = (*(v304 + 56) + 32 * v172);
        *v174 = v161;
        v174[1] = v162;
        swift_unknownObjectRelease();
        sub_1AFBE44DC(&v306, sub_1AF4433E4);
      }

      else
      {
        v173 = v304;
        *(v304 + 8 * (v167 >> 6) + 64) |= 1 << v167;
        *(v173[6] + 16 * v167) = v163;
        v175 = (v173[7] + 32 * v167);
        *v175 = v161;
        v175[1] = v162;
        sub_1AFBE44DC(&v306, sub_1AF4433E4);
        ++v173[2];
      }

      *v285 = v173;

      if (!v301.i64[0])
      {
        break;
      }

      --v301.i64[0];
    }
  }

  if (!*(*v285 + 16) || (sub_1AF419914(0x305F63645F66, 0xE600000000000000), (v177 & 1) == 0))
  {
    v186 = v285;
    v187 = v275;
    sub_1AFBDF754(120, 0xE100000000000000, 121, 0xE100000000000000, 122, 0xE100000000000000, 0x6E6F697469736F70, 0xE800000000000000, 30, v275, v285);
    sub_1AFBDF754(30830, 0xE200000000000000, 31086, 0xE200000000000000, 31342, 0xE200000000000000, 0x6C616D726F6ELL, 0xE600000000000000, 30, v187, v186);
    sub_1AFBDF754(0x305F656C616373, 0xE700000000000000, 0x315F656C616373, 0xE700000000000000, 0x325F656C616373, 0xE700000000000000, 1702521203, 0xE400000000000000, 30, v187, v186);
    sub_1AFBDF064(117, 0xE100000000000000, 118, 0xE100000000000000, 30325, 0xE200000000000000, v187, v186);
    sub_1AFBE07CC(6579570, 0xE300000000000000, 0x6E65657267, 0xE500000000000000, 1702194274, 0xE400000000000000, 0, 0, 0x726F6C6F63, 0xE500000000000000, v187, v186);
    sub_1AFBE07CC(0x5F65737566666964, 0xEB00000000646572, 0x5F65737566666964, 0xED00006E65657267, 0x5F65737566666964, 0xEC00000065756C62, 0x7469736E65746E69, 0xE900000000000079, 0x726F6C6F63, 0xE500000000000000, v187, v186);
    sub_1AFBDFFFC(0x305F63645F66, 0xE600000000000000, 0x315F63645F66, 0xE600000000000000, 0x325F63645F66, 0xE600000000000000, 0x7974696361706FLL, 0xE700000000000000, 0x726F6C6F63, 0xE500000000000000, v187, v186);
    sub_1AFBDFFFC(0x315F746F72, 0xE500000000000000, 0x325F746F72, 0xE500000000000000, 0x335F746F72, 0xE500000000000000, 0x305F746F72, 0xE500000000000000, 0x7461746E6569726FLL, 0xEB000000006E6F69, v187, v186);
  }

  v178 = v285;
  v179 = v275;
  sub_1AFBDF754(120, 0xE100000000000000, 121, 0xE100000000000000, 122, 0xE100000000000000, 0x6E6F697469736F70, 0xE800000000000000, 30, v275, v285);
  sub_1AFBDF754(30830, 0xE200000000000000, 31086, 0xE200000000000000, 31342, 0xE200000000000000, 0x6C616D726F6ELL, 0xE600000000000000, 30, v179, v178);
  sub_1AFBDF754(0x305F656C616373, 0xE700000000000000, 0x315F656C616373, 0xE700000000000000, 0x325F656C616373, 0xE700000000000000, 1702521203, 0xE400000000000000, 30, v179, v178);
  sub_1AFBDF064(117, 0xE100000000000000, 118, 0xE100000000000000, 30325, 0xE200000000000000, v179, v178);
  sub_1AFBE07CC(6579570, 0xE300000000000000, 0x6E65657267, 0xE500000000000000, 1702194274, 0xE400000000000000, 0, 0, 0x726F6C6F63, 0xE500000000000000, v179, v178);
  sub_1AFBE07CC(0x5F65737566666964, 0xEB00000000646572, 0x5F65737566666964, 0xED00006E65657267, 0x5F65737566666964, 0xEC00000065756C62, 0x7469736E65746E69, 0xE900000000000079, 0x726F6C6F63, 0xE500000000000000, v179, v178);
  sub_1AFBDFFFC(0x305F63645F66, 0xE600000000000000, 0x315F63645F66, 0xE600000000000000, 0x325F63645F66, 0xE600000000000000, 0x7974696361706FLL, 0xE700000000000000, 0x726F6C6F63, 0xE500000000000000, v179, v178);
  sub_1AFBDFFFC(0x315F746F72, 0xE500000000000000, 0x325F746F72, 0xE500000000000000, 0x335F746F72, 0xE500000000000000, 0x305F746F72, 0xE500000000000000, 0x7461746E6569726FLL, 0xEB000000006E6F69, v179, v178);
  v180 = *v178;
  if (*(*v178 + 16))
  {
    v181 = sub_1AF419914(0x726F6C6F63, 0xE500000000000000);
    if (v182)
    {
      v183 = *(v180 + 56) + 32 * v181;
      if (*(v183 + 24) == 31)
      {
        v184 = *v183;
        v185 = *(v183 + 8);
        if ([swift_unknownObjectRetain_n() storageMode] == 2)
        {
          swift_unknownObjectRelease_n();
        }

        else
        {
          v214 = [v184 contents];
          v215 = v184;
          swift_unknownObjectRelease();
          if (v279)
          {
            v216 = &v214[v185];
            v299 = vdupq_n_s32(0x3E906EBBu);
            v298 = vdupq_n_s32(0x3D6147AEu);
            v297 = vdupq_n_s32(0x3F870A3Du);
            v296 = vdupq_n_s32(0x414EB852u);
            v295 = xmmword_1AFE42AB0;
            v294 = vdupq_n_s32(0x3D25AEE6u);
            v217 = v279;
            do
            {
              v301 = *v216;
              v218.i64[0] = 0x3F0000003F000000;
              v218.i64[1] = 0x3F0000003F000000;
              v219.i64[0] = vaddq_f32(vmulq_f32(v301, v299), v218).u64[0];
              v219.f32[2] = vmuls_lane_f32(0.28209, v301, 2) + 0.5;
              v219.i32[3] = 0;
              v300 = vmaxnmq_f32(v219, 0);
              v220 = vdivq_f32(vaddq_f32(v300, v298), v297);
              v220.i32[3] = 0;
              v221 = _simd_pow_f4(v220, v295);
              v222 = vcgeq_f32(v294, v300);
              v222.i32[3] = 0;
              v300 = vbslq_s8(vcltzq_s32(v222), vdivq_f32(v300, v296), v221);
              v223 = expf(-v301.f32[3]);
              v224 = v300;
              v224.f32[3] = 1.0 / (v223 + 1.0);
              *v216++ = v224;
              --v217;
            }

            while (v217);
          }
        }
      }
    }
  }

  v225 = *v285;
  if (!*(*v285 + 16))
  {
    goto LABEL_200;
  }

  v226 = sub_1AF419914(1702521203, 0xE400000000000000);
  if ((v227 & 1) == 0)
  {
    goto LABEL_200;
  }

  v228 = *(v225 + 56) + 32 * v226;
  if (*(v228 + 24) != 30)
  {
    goto LABEL_200;
  }

  v229 = *v228;
  v230 = *(v228 + 8);
  if ([swift_unknownObjectRetain_n() storageMode] == 2)
  {
    swift_unknownObjectRelease_n();
  }

  else
  {
    v231 = [v229 contents];
    v232 = v229;
    swift_unknownObjectRelease();
    if (v279)
    {
      if (v279 >= 6)
      {
        v234 = 0;
        v253 = &v231[v230];
        v254 = 12 * (v279 - 1);
        if (&v231[v230 + 8 + v254] >= &v231[v230 + 8] && is_mul_ok(v279 - 1, 0xCuLL) && &v253->i32[v254 / 4 + 1] >= &v253->i32[1] && is_mul_ok(v279 - 1, 0xCuLL) && (v253 + v254) >= v253 && is_mul_ok(v279 - 1, 0xCuLL))
        {
          v234 = v279 & 0xFFFFFFFFFFFFFFFELL;
          v255 = v279 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v233.i64[0] = v253[1].i64[0];
            v299 = v233;
            v301 = *v253;
            v256.f32[0] = expf(v233.f32[1]);
            v300 = v256;
            v257.f32[0] = expf(*v299.i32);
            v257.i32[1] = v300.i32[0];
            v299 = v257;
            v258.f32[0] = expf(v301.f32[1]);
            v300 = v258;
            v259.f32[0] = expf(v301.f32[0]);
            v259.i32[1] = v300.i32[0];
            v300 = v259;
            v260 = expf(v301.f32[2]);
            v261 = v300;
            v261.f32[2] = v260;
            v300 = v261;
            v262 = expf(v301.f32[3]);
            v233 = v300;
            v233.f32[3] = v262;
            *v253 = v233;
            v253[1].i64[0] = v299.i64[0];
            v253 = (v253 + 24);
            v255 -= 2;
          }

          while (v255);
          if (v279 == v234)
          {
            goto LABEL_200;
          }
        }
      }

      else
      {
        v234 = 0;
      }

      v235 = v279 - v234;
      v236 = &v231[12 * v234 + 8 + v230];
      do
      {
        *(v236 - 2) = expf(*(v236 - 2));
        *(v236 - 1) = expf(*(v236 - 1));
        *v236 = expf(*v236);
        v236 += 3;
        --v235;
      }

      while (v235);
    }
  }

LABEL_200:
  v237 = *v285;
  if (!*(*v285 + 16))
  {
  }

  v238 = sub_1AF419914(0x7461746E6569726FLL, 0xEB000000006E6F69);
  if ((v239 & 1) == 0)
  {
  }

  v240 = *(v237 + 56) + 32 * v238;
  if (*(v240 + 24) != 31)
  {
  }

  v241 = *v240;
  v242 = *(v240 + 8);
  if ([swift_unknownObjectRetain_n() storageMode] != 2)
  {
    v243 = [v241 contents];
    v244 = v241;
    swift_unknownObjectRelease();
    v245 = v279;
    if (v279)
    {
      v246 = &v243[v242];
      do
      {
        v247 = vmulq_f32(*v246, *v246);
        *v247.i8 = vadd_f32(*v247.i8, *&vextq_s8(v247, v247, 8uLL));
        v248 = vdupq_lane_s32(vadd_f32(*v247.i8, vdup_lane_s32(*v247.i8, 1)), 0);
        v249 = vrsqrteq_f32(v248);
        v250 = vmulq_f32(v249, vrsqrtsq_f32(v248, vmulq_f32(v249, v249)));
        *v246 = vbslq_s8(vceqzq_f32(v248), *v246, vmulq_f32(*v246, vmulq_f32(v250, vrsqrtsq_f32(v248, vmulq_f32(v250, v250)))));
        ++v246;
        --v245;
      }

      while (v245);
    }
  }

  return swift_unknownObjectRelease_n();
}

uint64_t sub_1AFBE3D98(uint64_t a1, unint64_t a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v12, 0, 14);
      goto LABEL_9;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_1AFBE3EEC(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v5)
  {
    v6 = a1;
    v7 = a1 >> 32;
    return sub_1AFBE3EEC(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v12[0] = a1;
  LOWORD(v12[1]) = a2;
  BYTE2(v12[1]) = BYTE2(a2);
  BYTE3(v12[1]) = BYTE3(a2);
  BYTE4(v12[1]) = BYTE4(a2);
  BYTE5(v12[1]) = BYTE5(a2);
LABEL_9:
  v13[0] = sub_1AF758248(v12);
  v13[1] = v9;
  v13[2] = v10;
  v14 = v11;
  return a3(v13);
}

uint64_t sub_1AFBE3EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = sub_1AFDFBDB8();
  if (v6)
  {
    v6 = v6 + a1 - sub_1AFDFBDE8();
  }

  sub_1AFDFBDD8();
  v11[0] = sub_1AF758248(v6);
  v11[1] = v7;
  v11[2] = v8;
  v12 = v9;
  return a4(v11);
}

uint64_t sub_1AFBE3F9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = sub_1AFDFE428();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  if (a6)
  {

    v18 = sub_1AFDFE408();
    MEMORY[0x1EEE9AC00](v18);
    v47 = v19;
    *(&v39 - 4) = v19;
    *(&v39 - 3) = a3;
    v41 = a3;
    v43 = a4;
    v37 = a4;
    v38 = a5;
    sub_1AFBE3D98(a1, a2, sub_1AFBE4458, (&v39 - 6));
    v44 = v6;
    if (v6)
    {
      sub_1AFDFE408();
      v20 = v17;
      sub_1AFDFE418();
      v21 = v42;
      v22 = *(v40 + 8);
      v22(v14, v42);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v45 = 0;
      v46 = 0xE000000000000000;
      sub_1AFDFE218();

      v45 = 0x6E6964616F4C202DLL;
      v46 = 0xEA00000000002067;
      MEMORY[0x1B2718AE0](v41, v43);
      MEMORY[0x1B2718AE0](0x203A656D6954202ELL, 0xE800000000000000);
      v23 = sub_1AFDFF418();
      MEMORY[0x1B2718AE0](v23);

      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      v25 = v45;
      v24 = v46;
      v26 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v35 = v26;
        swift_once();
        v26 = v35;
      }

      v45 = 0;
      sub_1AF0D4F18(v26, &v45, v25, v24);

      return (v22)(v20, v21);
    }

    else
    {
      sub_1AFDFE408();
      v28 = v17;
      sub_1AFDFE418();
      v29 = *(v40 + 8);
      v30 = v42;
      v29(v14, v42);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v45 = 0;
      v46 = 0xE000000000000000;
      sub_1AFDFE218();

      v45 = 0x6E6964616F4C202DLL;
      v46 = 0xEA00000000002067;
      MEMORY[0x1B2718AE0](v41, v43);
      MEMORY[0x1B2718AE0](0x203A656D6954202ELL, 0xE800000000000000);
      v31 = sub_1AFDFF418();
      MEMORY[0x1B2718AE0](v31);

      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      v33 = v45;
      v32 = v46;
      v34 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v36 = v34;
        swift_once();
        v34 = v36;
      }

      v45 = 0;
      sub_1AF0D4F18(v34, &v45, v33, v32);

      return (v29)(v28, v30);
    }
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFBE4478(uint64_t a1, uint64_t a2)
{
  sub_1AF4433E4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AFBE44DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AFBE453C()
{
  result = qword_1EB63E3E8;
  if (!qword_1EB63E3E8)
  {
    sub_1AF7582E0(255);
    result = swift_getWitnessTable(MEMORY[0x1E69E74E8], v3, v0, v1);
    atomic_store(result, &qword_1EB63E3E8);
  }

  return result;
}

id sub_1AFBE45A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
  v5 = a1 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock;
  os_unfair_lock_lock(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock + 24));
  if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_sceneInBackground);
  }

  os_unfair_lock_unlock(*(v5 + 24));
  v7 = *(v2 + 16);
  v8 = *(v7 + 656);
  v105[6] = *(v7 + 640);
  v105[7] = v8;
  v106[0] = *(v7 + 672);
  v9 = *(v7 + 592);
  v105[2] = *(v7 + 576);
  v105[3] = v9;
  v10 = *(v7 + 624);
  v105[4] = *(v7 + 608);
  v105[5] = v10;
  v11 = *(v7 + 560);
  v105[0] = *(v7 + 544);
  v105[1] = v11;
  *(v106 + 9) = *(v7 + 681);

  if (sub_1AF448314(v105) == 1)
  {

    return 0;
  }

  if (*(v7 + 696) != 1)
  {
    v13 = *(v7 + 552);
    ObjectType = swift_getObjectType();
    *(v7 + 688) = (*(v13 + 8))(*(v7 + 568), v4, v6, ObjectType, v13, *(v7 + 560));
    swift_unknownObjectRelease();
    *(v7 + 696) = 1;
  }

  v15 = *(v7 + 688);
  swift_unknownObjectRetain();

  if (!v15)
  {
    return 0;
  }

  v16 = *(v2 + 16);
  v17 = *(v16 + 656);
  v103[6] = *(v16 + 640);
  v103[7] = v17;
  v104[0] = *(v16 + 672);
  v18 = *(v16 + 592);
  v103[2] = *(v16 + 576);
  v103[3] = v18;
  v19 = *(v16 + 624);
  v103[4] = *(v16 + 608);
  v103[5] = v19;
  v20 = *(v16 + 560);
  v103[0] = *(v16 + 544);
  v103[1] = v20;
  *(v104 + 9) = *(v16 + 681);

  if (sub_1AF448314(v103) == 1)
  {
  }

  else
  {
    v21 = *(v16 + 552);
    v22 = *(v16 + 560);
    v23 = *(v16 + 568);
    v24 = swift_getObjectType();
    v25 = (*(v21 + 16))(v23, v4, v24, v21, v22);

    if (v25)
    {
      v72 = [swift_unknownObjectRetain() storageMode] != 3;
LABEL_27:
      v27 = 2;
      goto LABEL_28;
    }
  }

  v26 = *(v2 + 24);
  if (v26 == 2)
  {
    goto LABEL_34;
  }

  if ((v26 & 0x1000000000000) == 0)
  {
    v72 = 0;
    v27 = 0;
    v25 = 0;
    goto LABEL_28;
  }

  v25 = sub_1AF750DEC(0x445F45555141504FLL, 0xEC00000048545045, 0, 0, 0, 1, 1);

  if (!v25)
  {
    CFXTextureDescriptorMakeDefault(&v73);
    sub_1AF46749C([v15 width], &v73);
    sub_1AF4674A4([v15 height], &v73);
    v28 = *(v2 + 16);
    sub_1AF46748C(*(v28 + 448), &v73);
    sub_1AFA4DCA8(&v73);
    sub_1AF48F3EC(&v73);
    v29 = *(v28 + 16);

    v30 = CFXGPUDeviceGetMTLDevice(v29);

    LODWORD(v28) = [v30 supportsMemorylessRenderTargets];
    swift_unknownObjectRelease();
    if (v28 && *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_canUseImGUI) != 1)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    sub_1AF5F7474(v31, &v73);
    v32 = *(*(*(v2 + 16) + 192) + 16);

    v94 = v73;
    *&v95 = v74;
    v33 = CFXTextureAllocatorPerFrameAllocate(v32, &v94);
    if (!v33)
    {
      while (1)
      {
LABEL_34:
        sub_1AFDFE518();
        __break(1u);
      }
    }

    v25 = v33;
    v34 = sub_1AFDFCEC8();
    [v25 setLabel_];

    v35 = swift_unknownObjectRetain();
    sub_1AF824548(v35, 0x445F45555141504FLL, 0xEC00000048545045);

    swift_unknownObjectRetain();
    v72 = 0;
    goto LABEL_27;
  }

  v72 = 0;
  if ([swift_unknownObjectRetain() storageMode] == 3)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

LABEL_28:
  v36 = *(v2 + 16);
  v37 = v36[41];
  v38 = v36[39];
  v91 = v36[40];
  v92 = v37;
  v39 = v36[41];
  v93[0] = v36[42];
  v40 = v36[37];
  v41 = v36[35];
  v87 = v36[36];
  v88 = v40;
  v42 = v36[37];
  v43 = v36[39];
  v89 = v36[38];
  v90 = v43;
  v44 = v36[35];
  v86[0] = v36[34];
  v86[1] = v44;
  *(v93 + 9) = *(v36 + 681);
  v100 = v91;
  v101 = v39;
  v102[0] = v36[42];
  *(v102 + 9) = *(v36 + 681);
  v96 = v87;
  v97 = v42;
  v98 = v89;
  v99 = v38;
  v94 = v86[0];
  v95 = v41;

  if (sub_1AF448314(&v94) == 1)
  {
    goto LABEL_34;
  }

  swift_unknownObjectRetain();
  sub_1AF6B724C(v86, v84, &unk_1ED730830, &type metadata for Renderer.CurrentRenderContext);

  v45 = *(&v94 + 1);
  swift_unknownObjectRetain();
  sub_1AF0D9DB0(v86, &unk_1ED730830, &type metadata for Renderer.CurrentRenderContext);
  v46 = swift_getObjectType();
  v47 = (*(v45 + 112))(v46, v45);
  swift_unknownObjectRelease();
  v48 = *(v2 + 16);
  v49 = v48[41];
  v50 = v48[39];
  v81 = v48[40];
  v82 = v49;
  v51 = v48[41];
  v83[0] = v48[42];
  v52 = v48[37];
  v53 = v48[35];
  v77 = v48[36];
  v78 = v52;
  v54 = v48[37];
  v55 = v48[39];
  v79 = v48[38];
  v80 = v55;
  v56 = v48[35];
  v76[0] = v48[34];
  v76[1] = v56;
  *(v83 + 9) = *(v48 + 681);
  v84[6] = v81;
  v84[7] = v51;
  v85[0] = v48[42];
  *(v85 + 9) = *(v48 + 681);
  v84[2] = v77;
  v84[3] = v54;
  v84[4] = v79;
  v84[5] = v50;
  v84[0] = v76[0];
  v84[1] = v53;

  if (sub_1AF448314(v84) == 1)
  {
    goto LABEL_34;
  }

  sub_1AF6B724C(v76, v75, &unk_1ED730830, &type metadata for Renderer.CurrentRenderContext);

  v57 = *(&v84[0] + 1);
  swift_unknownObjectRetain();
  sub_1AF0D9DB0(v76, &unk_1ED730830, &type metadata for Renderer.CurrentRenderContext);
  v58 = swift_getObjectType();
  (*(v57 + 120))(v58, v57);
  swift_unknownObjectRelease();
  v59 = objc_allocWithZone(MEMORY[0x1E6974128]);
  swift_unknownObjectRetain();
  v12 = [v59 init];
  v60 = [v12 colorAttachments];
  v61 = [v60 objectAtIndexedSubscript_];

  nullsub_106();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  [v61 setTexture_];
  [v61 setLoadAction_];
  [v61 setStoreAction_];
  [v61 setClearColor_];
  [v61 setLevel_];

  if (v25)
  {
    v70 = [v12 depthAttachment];
    swift_unknownObjectRetain();
    [v70 setTexture_];
    [v70 setLoadAction_];
    [v70 setStoreAction_];
    [v70 setClearDepth_];
    [v70 setLevel_];

    swift_unknownObjectRelease();
    sub_1AF474EC4();
    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease_n();
  return v12;
}

void *sub_1AFBE4EC4()
{
  sub_1AF0D879C(v8, 6);
  v1 = *(&v8[0] + 1);
  v0 = *&v8[0];

  v2 = sub_1AF750DEC(v0, v1, 0, 0, 0, 1, 1);
  sub_1AF0D8F38(v8);

  if (!v2)
  {
    sub_1AF0D879C(v9, 4);
    v4 = *(&v9[0] + 1);
    v3 = *&v9[0];

    v2 = sub_1AF750DEC(v3, v4, 0, 0, 0, 1, 1);
    sub_1AF0D8F38(v9);

    if (!v2)
    {
      sub_1AF0D879C(v10, 0);
      v6 = *(&v10[0] + 1);
      v5 = *&v10[0];

      v2 = sub_1AF750DEC(v5, v6, 0, 0, 0, 1, 1);
      sub_1AF0D8F38(v10);

      if (!v2)
      {

        v2 = sub_1AF7055E4();
      }
    }
  }

  return v2;
}

id sub_1AFBE502C(uint64_t a1)
{
  v2 = v1;
  v129 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  if ((*(*(v1 + 16) + 392) & 1) == 0)
  {
    v40 = 0;
    while (1)
    {
      v53 = *(v2 + 56);
      if (*(v53 + 16) && (v54 = sub_1AF0D8ED4(v3, byte_1F2500B08[v40 + 32]), (v55 & 1) != 0))
      {
        v56 = (*(v53 + 56) + 80 * v54);
        v148 = *v56;
        v57 = v56[3];
        v58 = v56[4];
        v59 = v56[2];
        v149 = v56[1];
        v150 = v59;
        v151 = v57;
        v152 = v58;
        v133 = v56[1];
        v134 = v56[2];
        v135 = v56[3];
        v136 = v56[4];
        v132 = *v56;
        sub_1AF0D8EDC(&v148, &v153);
        v155 = v134;
        v156 = v135;
        v153 = v132;
        v154 = v133;
        v157 = v136;
        v131 = v132;
        v130 = *(&v133 + 1);
        v60 = v133;
        v61 = v134;
        v62 = v135;
        v63 = BYTE8(v135);
        v64 = BYTE8(v134);
      }

      else
      {
        v63 = 0;
        v62 = 0;
        v64 = 0;
        v61 = 0;
        v130 = 0;
        v60 = 0;
        v131 = 0uLL;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v153 = 0u;
      }

      v65 = v2;
      v66 = *(*(*(v2 + 16) + 192) + 32);
      v67 = *(v66 + 16);

      if (v67 && (v68 = sub_1AF419914(v131, *(&v131 + 1)), (v69 & 1) != 0))
      {
        v41 = *(*(v66 + 56) + 8 * v68);
        swift_unknownObjectRetain();

        v2 = v65;
      }

      else
      {

        nullsub_106();
        LOBYTE(v148) = v64 & 1;
        LOBYTE(v141) = v64 & 1;
        v159 = v61;
        v74 = 32;
        if (!v62)
        {
          v74 = 1;
        }

        v160 = v64 & 1;
        if ((v63 & 1) == 0)
        {
          v74 = v62;
        }

        v161 = v61;
        v162 = v64 & 1;
        v163 = v60;
        v164 = v74;
        v165 = v130;
        v166 = v70;
        v167 = v71;
        v168 = v72;
        v169 = v73;
        v2 = v65;
        v75 = *(v65 + 16);
        v76 = v75[41];
        v138 = v75[40];
        v139 = v76;
        v140[0] = v75[42];
        v77 = v75[37];
        v134 = v75[36];
        v135 = v77;
        v78 = v75[39];
        v136 = v75[38];
        v137 = v78;
        v79 = v75[35];
        v132 = v75[34];
        v133 = v79;
        *(v140 + 9) = *(v75 + 681);

        if (sub_1AF448314(&v132) == 1)
        {
          goto LABEL_44;
        }

        v80 = *(&v132 + 1);
        ObjectType = swift_getObjectType();
        v82 = *(v80 + 80);
        swift_unknownObjectRetain();
        v83 = v82(ObjectType, v80);
        v85 = v84;

        swift_unknownObjectRelease();
        v86 = sub_1AFBE973C(0, 2, v83, v85);
        v88 = v87;
        v90 = v89;

        v41 = sub_1AF750DEC(v131, *(&v131 + 1), v86, v88, v90, 0, 1);
      }

      v42 = v40 + 1;
      v43 = [v129 colorAttachments];
      v44 = [v43 objectAtIndexedSubscript_];

      nullsub_106();
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      sub_1AF0D9DB0(&v153, &qword_1ED730AD0, &type metadata for RenderGraph.RenderTargetDesc);
      [v44 setTexture_];
      [v44 setLoadAction_];
      [v44 setStoreAction_];
      [v44 setClearColor_];
      [v44 setLevel_];
      swift_unknownObjectRelease();

      v40 = v42;
      if (v42 == 4)
      {
        goto LABEL_10;
      }
    }
  }

  sub_1AF0D879C(&v141, 0);
  v4 = v141;

  v5 = sub_1AF750DEC(v4, *(&v4 + 1), 0, 0, 0, 1, 1);

  if (!v5)
  {
    nullsub_106();
    v10 = v146;
    v11 = 32;
    if (!v146)
    {
      v11 = 1;
    }

    if (v147)
    {
      v10 = v11;
    }

    v159 = v144;
    v160 = v145;
    v161 = v144;
    v162 = v145;
    v163 = v142;
    v164 = v10;
    v165 = v143;
    v166 = v6;
    v167 = v7;
    v168 = v8;
    v169 = v9;
    v12 = *(v2 + 16);
    v13 = v12[41];
    v138 = v12[40];
    v139 = v13;
    v140[0] = v12[42];
    v14 = v12[37];
    v134 = v12[36];
    v135 = v14;
    v15 = v12[39];
    v136 = v12[38];
    v137 = v15;
    v16 = v12[35];
    v132 = v12[34];
    v133 = v16;
    *(v140 + 9) = *(v12 + 681);

    if (sub_1AF448314(&v132) == 1)
    {
      goto LABEL_44;
    }

    v17 = *(&v132 + 1);
    v18 = swift_getObjectType();
    v19 = *(v17 + 80);
    swift_unknownObjectRetain();
    v20 = v19(v18, v17);
    v22 = v21;

    swift_unknownObjectRelease();
    v23 = sub_1AFBE973C(0, 2, v20, v22);
    v25 = v24;
    v27 = v26;

    v5 = sub_1AF750DEC(v4, *(&v4 + 1), v23, v25, v27, 0, 1);
  }

  v28 = [v129 colorAttachments];
  v29 = [v28 objectAtIndexedSubscript_];

  nullsub_106();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_1AF0D8F38(&v141);
  [v29 setTexture_];
  [v29 setLoadAction_];
  [v29 setStoreAction_];
  [v29 setClearColor_];
  [v29 setLevel_];
  swift_unknownObjectRelease();

LABEL_10:
  sub_1AF0D879C(&v148, 1);
  v38 = v148;

  v39 = sub_1AF750DEC(v38, *(&v38 + 1), 0, 0, 0, 1, 1);

  if (v39)
  {
    sub_1AF0D8F38(&v148);
    goto LABEL_33;
  }

  nullsub_106();
  v95 = v151;
  v96 = 32;
  if (!v151)
  {
    v96 = 1;
  }

  if (BYTE8(v151))
  {
    v95 = v96;
  }

  *&v153 = v150;
  BYTE8(v153) = BYTE8(v150);
  *&v154 = v150;
  BYTE8(v154) = BYTE8(v150);
  *&v155 = v149;
  *(&v155 + 1) = v95;
  *&v156 = *(&v149 + 1);
  *(&v156 + 1) = v91;
  *&v157 = v92;
  *(&v157 + 1) = v93;
  v158 = v94;
  v97 = *(v2 + 16);
  v98 = v97[41];
  v138 = v97[40];
  v139 = v98;
  v140[0] = v97[42];
  v99 = v97[37];
  v134 = v97[36];
  v135 = v99;
  v100 = v97[39];
  v136 = v97[38];
  v137 = v100;
  v101 = v97[35];
  v132 = v97[34];
  v133 = v101;
  *(v140 + 9) = *(v97 + 681);

  if (sub_1AF448314(&v132) != 1)
  {
    v102 = *(&v132 + 1);
    v103 = swift_getObjectType();
    v104 = *(v102 + 80);
    swift_unknownObjectRetain();
    v105 = v104(v103, v102);
    v107 = v106;

    swift_unknownObjectRelease();
    v108 = sub_1AFBE973C(0, 2, v105, v107);
    v110 = v109;
    v112 = v111;

    v39 = sub_1AF750DEC(v38, *(&v38 + 1), v108, v110, v112, 0, 1);
    sub_1AF0D8F38(&v148);

    if (!v39)
    {
      return v129;
    }

LABEL_33:
    v113 = *(v2 + 16);
    v114 = *(v113 + 656);
    v138 = *(v113 + 640);
    v139 = v114;
    v140[0] = *(v113 + 672);
    v115 = *(v113 + 592);
    v134 = *(v113 + 576);
    v135 = v115;
    v116 = *(v113 + 624);
    v136 = *(v113 + 608);
    v137 = v116;
    v117 = *(v113 + 560);
    v132 = *(v113 + 544);
    v133 = v117;
    *(v140 + 9) = *(v113 + 681);

    if (sub_1AF448314(&v132) == 1)
    {
    }

    else
    {
      v118 = *(v113 + 552);
      v119 = *(v113 + 560);
      v120 = *(v113 + 568);
      v121 = swift_getObjectType();
      v122 = (*(v118 + 16))(v120, a1, v121, v118, v119);
      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
      if (v122)
      {
        swift_unknownObjectRelease();
        if (v39 == v122)
        {
          v123 = 1;
        }

        else
        {
          v123 = 2;
        }

LABEL_40:
        v124 = [v39 storageMode];
        v125 = v124 != 3;
        if (v124 == 3)
        {
          v123 = 2;
        }

        v126 = [v129 depthAttachment];
        swift_unknownObjectRetain();
        [v126 setTexture_];
        [v126 setLoadAction_];
        [v126 setStoreAction_];
        [v126 setClearDepth_];
        [v126 setLevel_];

        swift_unknownObjectRelease();
        sub_1AF474EC4();
        swift_unknownObjectRelease();
        return v129;
      }
    }

    v123 = 2;
    goto LABEL_40;
  }

LABEL_44:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFBE5ADC(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 280);
    v5 = v4[8];

    if (v5)
    {
      if (*v4[12])
      {
        swift_unknownObjectRetain();
      }

      else
      {
        v7 = [swift_unknownObjectRetain() renderCommandEncoder];
        v8 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v8);

        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        v9 = sub_1AFDFCEC8();

        [v7 setLabel_];

        v10 = v4[12];
        *v10 = [objc_allocWithZone(type metadata accessor for RenderCommandEncoder()) initWithEncoder_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v11 = *v4[12];
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (!v11)
        {
        }
      }
    }

    else
    {
      v6 = v4[7];
      swift_unknownObjectRetain();
      if (!v6)
      {
      }
    }

    swift_getObjectType();
    sub_1AFB19490(v3, a2);
    swift_unknownObjectRelease();
  }

  return result;
}

id sub_1AFBE5C9C(uint64_t a1)
{
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  sub_1AF0D879C(&v142, 4);
  v4 = v142;

  v5 = sub_1AF750DEC(v4, *(&v4 + 1), 0, 0, 0, 1, 1);

  if (!v5)
  {
    nullsub_106();
    v10 = v147;
    v11 = 32;
    if (!v147)
    {
      v11 = 1;
    }

    if (v148)
    {
      v10 = v11;
    }

    v167 = v145;
    v168 = v146;
    v169 = v145;
    v170 = v146;
    v171 = v143;
    v172 = v10;
    v173 = v144;
    v174 = v6;
    v175 = v7;
    v176 = v8;
    v177 = v9;
    v12 = *(v1 + 16);
    v13 = v12[41];
    v139 = v12[40];
    v140 = v13;
    v141[0] = v12[42];
    v14 = v12[37];
    v135 = v12[36];
    v136 = v14;
    v15 = v12[39];
    v137 = v12[38];
    v138 = v15;
    v16 = v12[35];
    v133 = v12[34];
    v134 = v16;
    *(v141 + 9) = *(v12 + 681);

    if (sub_1AF448314(&v133) == 1)
    {
      goto LABEL_57;
    }

    v17 = *(&v133 + 1);
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 80);
    swift_unknownObjectRetain();
    v20 = v19(ObjectType, v17);
    v22 = v21;

    swift_unknownObjectRelease();
    v23 = sub_1AFBE973C(0, 2, v20, v22);
    v25 = v24;
    LODWORD(ObjectType) = v26;

    v5 = sub_1AF750DEC(v4, *(&v4 + 1), v23, v25, ObjectType, 0, 1);
  }

  v27 = [v3 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript_];

  nullsub_106();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [v28 setTexture_];
  [v28 setLoadAction_];
  [v28 setStoreAction_];
  [v28 setClearColor_];
  [v28 setLevel_];

  v37 = *(v2 + 24);
  if (v37 != 2)
  {
    sub_1AF0D8F38(&v142);
    if (v146)
    {
      v132 = -log2f(*&v145);
      if ((v37 & 1) == 0)
      {
LABEL_11:
        v38 = *(*(v2 + 16) + 16);

        v39 = CFXGPUDeviceGetMTLDevice(v38);

        v40 = [v39 supportsMemorylessRenderTargets];
        swift_unknownObjectRelease();
        if ((v37 & 0x100000000000000) != 0 || !v40)
        {
          sub_1AF0D879C(&v149, 1);
          v45 = *(&v149 + 1);
          v46 = v149;

          v42 = sub_1AF750DEC(v46, v45, 0, 0, 0, 1, 1);

          if (v42)
          {
LABEL_19:
            sub_1AF0D8F38(&v149);
            v47 = &selRef_setAnimationTimingFunction_;
            v48 = &selRef_setMotionTexture_;
LABEL_40:
            swift_unknownObjectRetain_n();
LABEL_41:
            v115 = *(v2 + 16);
            v116 = *(v115 + 656);
            v139 = *(v115 + 640);
            v140 = v116;
            v141[0] = *(v115 + 672);
            v117 = *(v115 + 592);
            v135 = *(v115 + 576);
            v136 = v117;
            v118 = *(v115 + 624);
            v137 = *(v115 + 608);
            v138 = v118;
            v119 = *(v115 + 560);
            v133 = *(v115 + 544);
            v134 = v119;
            *(v141 + 9) = *(v115 + 681);

            if (sub_1AF448314(&v133) == 1)
            {

              if (!v42)
              {
                v120 = 1;
LABEL_55:
                v126 = [v3 depthAttachment];
                [v126 setTexture_];
                [v126 setLoadAction_];
                [v126 v48[283]];
                [v126 setClearDepth_];
                [v126 v47[424]];

                swift_unknownObjectRelease_n();
                goto LABEL_56;
              }

LABEL_52:
              swift_unknownObjectRelease();
              v120 = 2;
              goto LABEL_55;
            }

            v121 = *(v115 + 552);
            v122 = *(v115 + 560);
            v123 = *(v115 + 568);
            v124 = swift_getObjectType();
            v125 = (*(v121 + 16))(v123, a1, v124, v121, v122);

            if (v42)
            {
              if (!v125)
              {
                v48 = &selRef_setMotionTexture_;
                goto LABEL_52;
              }

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if (v42 == v125)
              {
                v120 = 1;
              }

              else
              {
                v120 = 2;
              }
            }

            else if (v125)
            {
              swift_unknownObjectRelease();
              v120 = 2;
            }

            else
            {
              v120 = 1;
            }

            v48 = &selRef_setMotionTexture_;
            goto LABEL_55;
          }

          v128 = v45;
          v130 = v3;
          nullsub_106();
          v75 = v154;
          v76 = 32;
          if (!v154)
          {
            v76 = 1;
          }

          if (v155)
          {
            v75 = v76;
          }

          v156 = v152;
          v157 = v153;
          v158 = v152;
          v159 = v153;
          v160 = v150;
          v161 = v75;
          v162 = v151;
          v163 = v71;
          v164 = v72;
          v165 = v73;
          v166 = v74;
          v77 = *(v2 + 16);
          v78 = v77[41];
          v139 = v77[40];
          v140 = v78;
          v141[0] = v77[42];
          v79 = v77[37];
          v135 = v77[36];
          v136 = v79;
          v80 = v77[39];
          v137 = v77[38];
          v138 = v80;
          v81 = v77[35];
          v133 = v77[34];
          v134 = v81;
          *(v141 + 9) = *(v77 + 681);

          if (sub_1AF448314(&v133) != 1)
          {
            v82 = *(&v133 + 1);
            v83 = swift_getObjectType();
            v84 = *(v82 + 80);
            swift_unknownObjectRetain();
            v85 = v84(v83, v82);
            v87 = v86;

            swift_unknownObjectRelease();
            v88 = sub_1AFBE973C(0, 2, v85, v87);
            v90 = v89;
            v92 = v91;

            v42 = sub_1AF750DEC(v46, v128, v88, v90, v92, 0, 1);
            sub_1AF0D8F38(&v149);

            goto LABEL_39;
          }
        }

        else
        {
          sub_1AF0D879C(&v149, 1);
          v41 = v149;

          v42 = sub_1AF750DEC(v41, *(&v41 + 1), 0, 0, 0, 1, 1);

          if (v42)
          {
            goto LABEL_19;
          }

          v130 = v3;
          nullsub_106();
          v97 = v154;
          v98 = 32;
          if (!v154)
          {
            v98 = 1;
          }

          if (v155)
          {
            v97 = v98;
          }

          v156 = v152;
          v157 = v153;
          v158 = v152;
          v159 = v153;
          v160 = v150;
          v161 = v97;
          v162 = v151;
          v163 = v93;
          v164 = v94;
          v165 = v95;
          v166 = v96;
          v99 = *(v2 + 16);
          v100 = v99[41];
          v139 = v99[40];
          v140 = v100;
          v141[0] = v99[42];
          v101 = v99[37];
          v135 = v99[36];
          v136 = v101;
          v102 = v99[39];
          v137 = v99[38];
          v138 = v102;
          v103 = v99[35];
          v133 = v99[34];
          v134 = v103;
          *(v141 + 9) = *(v99 + 681);

          if (sub_1AF448314(&v133) != 1)
          {
            v104 = *(&v133 + 1);
            v105 = swift_getObjectType();
            v106 = *(v104 + 80);
            swift_unknownObjectRetain();
            v107 = v106(v105, v104);
            v109 = v108;

            swift_unknownObjectRelease();
            v110 = sub_1AFBE973C(0, 3, v107, v109);
            v112 = v111;
            v114 = v113;

            v42 = sub_1AF750DEC(v41, *(&v41 + 1), v110, v112, v114, 0, 1);
            sub_1AF0D8F38(&v149);

LABEL_39:
            v3 = v130;
            v47 = &selRef_setAnimationTimingFunction_;
            v48 = &selRef_setMotionTexture_;
            if (!v42)
            {
              goto LABEL_41;
            }

            goto LABEL_40;
          }
        }

        goto LABEL_57;
      }
    }

    else
    {
      v132 = 0;
      if ((v37 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_1AF0D879C(&v149, 5);
    v43 = v149;

    v44 = sub_1AF750DEC(v43, *(&v43 + 1), 0, 0, 0, 1, 1);

    if (v44)
    {
      sub_1AF0D8F38(&v149);
    }

    else
    {
      v129 = v3;
      nullsub_106();
      v53 = v154;
      v54 = 32;
      if (!v154)
      {
        v54 = 1;
      }

      if (v155)
      {
        v53 = v54;
      }

      v156 = v152;
      v157 = v153;
      v158 = v152;
      v159 = v153;
      v160 = v150;
      v161 = v53;
      v162 = v151;
      v163 = v49;
      v164 = v50;
      v165 = v51;
      v166 = v52;
      v55 = *(v2 + 16);
      v56 = v55[41];
      v139 = v55[40];
      v140 = v56;
      v141[0] = v55[42];
      v57 = v55[37];
      v135 = v55[36];
      v136 = v57;
      v58 = v55[39];
      v137 = v55[38];
      v138 = v58;
      v59 = v55[35];
      v133 = v55[34];
      v134 = v59;
      *(v141 + 9) = *(v55 + 681);

      if (sub_1AF448314(&v133) == 1)
      {
        goto LABEL_57;
      }

      v60 = *(&v133 + 1);
      v61 = swift_getObjectType();
      v62 = *(v60 + 80);
      swift_unknownObjectRetain();
      v63 = v62(v61, v60);
      v65 = v64;

      swift_unknownObjectRelease();
      v66 = sub_1AFBE973C(0, 2, v63, v65);
      v68 = v67;
      LODWORD(v60) = v69;

      v44 = sub_1AF750DEC(v43, *(&v43 + 1), v66, v68, v60, 0, 1);
      sub_1AF0D8F38(&v149);

      v3 = v129;
    }

    v70 = [v3 depthAttachment];
    [v70 setTexture_];
    [v70 setLoadAction_];
    [v70 setStoreAction_];
    [v70 setClearDepth_];
    [v70 setLevel_];
    swift_unknownObjectRelease();

LABEL_56:
    sub_1AF474EC4();
    swift_unknownObjectRelease();
    return v3;
  }

LABEL_57:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFBE68C8(void *a1)
{
  v3 = v1;
  sub_1AFBE8750(0, &qword_1EB6434E0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBE86FC();
  sub_1AFDFF3F8();
  *&v11 = *v3;
  v12 = 0;
  type metadata accessor for MTLPixelFormat(0);
  sub_1AFBE87B4(&qword_1EB640390, type metadata accessor for MTLPixelFormat, protocol conformance descriptor for MTLPixelFormat);
  sub_1AFDFE918();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1AFDFE8E8();
    LOBYTE(v11) = 2;
    sub_1AFDFE8E8();
    v11 = *(v3 + 16);
    v12 = 3;
    type metadata accessor for CGSize(0);
    sub_1AFBE87B4(&qword_1EB6406A0, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1AFBE6B2C()
{
  v1 = 0x74616D726F66;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6F69736E656D6964;
  }

  if (*v0)
  {
    v1 = 0x615265757161706FLL;
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

uint64_t sub_1AFBE6BB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AFBE82B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AFBE6BDC(uint64_t a1)
{
  v2 = sub_1AFBE86FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBE6C18(uint64_t a1)
{
  v2 = sub_1AFBE86FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFBE6C54@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1AFBE8438(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

double sub_1AFBE6CA8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

double sub_1AFBE6CBC()
{

  swift_deallocClassInstance();
  return result;
}

void sub_1AFBE6D18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 200);
    v2[4] = 0;
    v2[5] = 0;
    v2[3] = 2;
  }
}

void sub_1AFBE6D4C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v2 = a2;
  v3 = a1;
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
  if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare) != 1)
  {
    v14 = *(v140 + 32);
    v158[0] = *(v140 + 16);
    v158[1] = v14;
    v159 = *(v140 + 48);

    sub_1AF6B06C0(v3, v158, 0x200000000, &v160);
    if (v160)
    {
      v15 = *(v2 + 273);
      v128 = v15 ^ 1;
      if ((v15 & 1) != 0 || v168 < 1)
      {
        v139 = 0;
        v17 = 0;
        goto LABEL_40;
      }

      v133 = v165;
      if (v165)
      {
        v123 = v4;
        v125 = v2;
        v139 = 0;
        v16 = 0;
        v17 = 0;
        v131 = v164;
        v18 = v167;
        v19 = *(v166 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        *&v197 = v160;
        DWORD2(v197) = DWORD2(v160);
        BYTE12(v197) = BYTE12(v160);
        v143 = *(v167 + 32);
        *&v198 = v161;
        BYTE8(v198) = v162;
        v199 = v163;
        v129 = v19;
        do
        {
          v20 = (v131 + 48 * v16);
          v21 = *v20;
          v137 = v20[1];
          v23 = *(v20 + 2);
          v22 = *(v20 + 3);
          v25 = *(v20 + 4);
          v24 = *(v20 + 5);
          if (v19)
          {
            v26 = *(v24 + 376);

            os_unfair_lock_lock(v26);
            os_unfair_lock_lock(*(v24 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v143);
          v27 = *(v18 + 64);
          v156[0] = *(v18 + 48);
          v156[1] = v27;
          v157 = *(v18 + 80);
          v28 = *(*(*(*(v24 + 40) + 16) + 32) + 16) + 1;
          *(v18 + 48) = ecs_stack_allocator_allocate(*(v18 + 32), 48 * v28, 8);
          *(v18 + 56) = v28;
          *(v18 + 72) = 0;
          *(v18 + 80) = 0;
          *(v18 + 64) = 0;
          v29 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v23, v22, v25, v18);
          if (v23)
          {
            v19 = v129;
            if (v25)
            {
              do
              {
                v30 = *v29;
                v29 += 8;
                v17 |= *(v30 + 224);
                --v25;
              }

              while (v25);
              v139 = v17 & 1;
            }
          }

          else
          {
            v19 = v129;
            if (v21 != v137)
            {
              v31 = &v29[8 * v21];
              v32 = v137 - v21;
              do
              {
                v33 = *v31;
                v31 += 8;
                v17 |= *(v33 + 224);
                --v32;
              }

              while (v32);
              v139 = v17 & 1;
            }
          }

          sub_1AF630994(v18, &v197, v156);
          sub_1AF62D29C(v24);
          ecs_stack_allocator_pop_snapshot(v143);
          if (v19)
          {
            os_unfair_lock_unlock(*(v24 + 344));
            os_unfair_lock_unlock(*(v24 + 376));
          }

          ++v16;
        }

        while (v16 != v133);
        v4 = v123;
        v2 = v125;
        v3 = a1;
        goto LABEL_40;
      }
    }

    else
    {
      v128 = 0;
    }

    v139 = 0;
    v17 = 0;
LABEL_40:
    v35 = *(v140 + 112);
    v194 = *(v140 + 96);
    v195 = v35;
    v196 = *(v140 + 128);
    sub_1AF6B06C0(v3, &v194, 0x200000000, v169);
    v36 = *&v169[0];
    if (*&v169[0])
    {
      sub_1AF0D9DB0(v169, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v191 = *(v140 + 56);
    v192 = *(v140 + 72);
    v193 = *(v140 + 88);
    sub_1AF6B06C0(v3, &v191, 0x200000000, &v170);
    if (v170 && (v37 = *(v2 + 274), (v37 & 1) == 0))
    {
      if (v178 >= 1 && (v132 = v175) != 0)
      {
        v122 = v36;
        v124 = v4;
        v126 = v2;
        v40 = v177;
        v130 = v174;
        v135 = v37 ^ 1;
        v145 = *(v177 + 32);
        v41 = *(v176 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        *&v185 = v170;
        DWORD2(v185) = DWORD2(v170);
        BYTE12(v185) = BYTE12(v170);
        *&v186 = v171;
        BYTE8(v186) = v172;
        v187 = v173;
        sub_1AF6B724C(&v170, v154, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AF6B724C(&v170, v154, &qword_1ED725EA0, &type metadata for QueryResult);
        v34 = 0;
        v42 = 0;
        v127 = v41;
        do
        {
          v142 = v42;
          v43 = (v130 + 48 * v42);
          v45 = *v43;
          v44 = v43[1];
          v46 = *(v43 + 2);
          v138 = *(v43 + 3);
          v48 = *(v43 + 4);
          v47 = *(v43 + 5);
          if (v41)
          {
            v49 = *(v47 + 376);

            os_unfair_lock_lock(v49);
            os_unfair_lock_lock(*(v47 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v145);
          v50 = *(v40 + 64);
          v188 = *(v40 + 48);
          v189 = v50;
          v190 = *(v40 + 80);
          v51 = *(*(*(*(v47 + 40) + 16) + 32) + 16) + 1;
          *(v40 + 48) = ecs_stack_allocator_allocate(*(v40 + 32), 48 * v51, 8);
          *(v40 + 56) = v51;
          *(v40 + 72) = 0;
          *(v40 + 80) = 0;
          *(v40 + 64) = 0;
          v52 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v46, v138, v48, v40);
          if (v46)
          {
            if (v48)
            {
              v53 = 0;
              v3 = a1;
              do
              {
                v54 = *&v52[8 * v53];
                v17 |= *(v54 + 224);
                if ((*(v54 + 338) & 4) != 0)
                {
                  v34 = 1;
                }

                v55 = *(v54 + 272);
                v56 = (v55 + 56);
                v57 = *(v55 + 16) + 1;
                while (--v57)
                {
                  v58 = v56;
                  v56 += 40;
                  if (*v58 == 3 && *(v58 - 24) == 2)
                  {
                    v34 = 1;
                    break;
                  }
                }

                ++v53;
              }

              while (v53 != v48);
              v139 = v17 & 1;
            }

            else
            {
              v3 = a1;
            }

            v59 = v47;
            v41 = v127;
          }

          else
          {
            v3 = a1;
            v59 = v47;
            v41 = v127;
            if (v45 != v44)
            {
              do
              {
                v60 = *&v52[8 * v45++];
                v17 |= *(v60 + 224);
                if ((*(v60 + 338) & 4) != 0)
                {
                  v34 = 1;
                }

                v61 = *(v60 + 272);
                v62 = (v61 + 56);
                v63 = *(v61 + 16) + 1;
                while (--v63)
                {
                  v64 = v62;
                  v62 += 40;
                  if (*v64 == 3 && *(v64 - 24) == 2)
                  {
                    v34 = 1;
                    break;
                  }
                }
              }

              while (v45 != v44);
              v139 = v17 & 1;
            }
          }

          sub_1AF630994(v40, &v185, &v188);
          sub_1AF62D29C(v59);
          ecs_stack_allocator_pop_snapshot(v145);
          if (v41)
          {
            os_unfair_lock_unlock(*(v59 + 344));
            os_unfair_lock_unlock(*(v59 + 376));
          }

          v42 = v142 + 1;
        }

        while (v142 + 1 != v132);
        sub_1AF0D9DB0(&v160, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AF0D9DB0(&v170, &qword_1ED725EA0, &type metadata for QueryResult);
        v39 = &v170;
        v4 = v124;
        v2 = v126;
        v38 = v135;
        v36 = v122;
      }

      else
      {
        v34 = 0;
        v38 = 1;
        v39 = &v160;
      }
    }

    else
    {
      v38 = 0;
      v34 = 0;
      v39 = &v160;
    }

    v144 = v36 != 0;
    sub_1AF0D9DB0(v39, &qword_1ED725EA0, &type metadata for QueryResult);
    sub_1AF0D9DB0(&v170, &qword_1ED725EA0, &type metadata for QueryResult);
    v134 = v38;
    v141 = v128 & v38;
    goto LABEL_82;
  }

  v197 = *(v140 + 136);
  v198 = *(v140 + 152);
  v199 = *(v140 + 168);

  sub_1AF6B06C0(v3, &v197, 0x200000000, v156);
  v5 = *&v156[0];
  if (*&v156[0])
  {
    sub_1AF0D9DB0(v156, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  v6 = *(v140 + 192);
  v194 = *(v140 + 176);
  v195 = v6;
  v196 = *(v140 + 208);
  sub_1AF6B06C0(v3, &v194, 0x200000000, v158);
  v7 = *&v158[0];
  if (*&v158[0])
  {
    sub_1AF0D9DB0(v158, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  v191 = *(v140 + 216);
  v192 = *(v140 + 232);
  v193 = *(v140 + 248);
  sub_1AF6B06C0(v3, &v191, 0x200000000, &v160);
  v8 = v160;
  if (v160)
  {
    sub_1AF0D9DB0(&v160, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  v9 = *(v140 + 272);
  v188 = *(v140 + 256);
  v189 = v9;
  v190 = *(v140 + 288);
  sub_1AF6B06C0(v3, &v188, 0x200000000, v169);
  v10 = *&v169[0];
  if (*&v169[0])
  {
    sub_1AF0D9DB0(v169, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  v187 = *(v140 + 328);
  v11 = *(v140 + 312);
  v185 = *(v140 + 296);
  v186 = v11;
  sub_1AF6B06C0(v3, &v185, 0x200000000, &v170);
  v12 = v170;
  if (v170)
  {
    sub_1AF0D9DB0(&v170, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  if (v7 | v5)
  {
    v13 = 1;
  }

  else
  {
    v13 = (v10 | v8 | v12) != 0;
  }

  v139 = v13;
  v144 = 0;
  v128 = 1;
  v134 = 1;
  v34 = 1;
  v141 = 1;
LABEL_82:
  v65 = (v2 + 544);
  v66 = *(v2 + 656);
  v154[6] = *(v2 + 640);
  v154[7] = v66;
  v155[0] = *(v2 + 672);
  v67 = *(v2 + 592);
  v154[2] = *(v2 + 576);
  v154[3] = v67;
  v68 = *(v2 + 624);
  v154[4] = *(v2 + 608);
  v154[5] = v68;
  v69 = *(v2 + 560);
  v154[0] = *(v2 + 544);
  v154[1] = v69;
  *(v155 + 9) = *(v2 + 681);
  if (sub_1AF448314(v154) != 1)
  {
    v70 = *(v2 + 552);
    v71 = *(v2 + 560);
    v72 = *(v2 + 568);
    ObjectType = swift_getObjectType();
    v74 = (*(v70 + 16))(v72, v4, ObjectType, v70, v71);
    if (v74)
    {
      v75 = v74;
      sub_1AF0D879C(&v179, 1);
      v76 = v2;
      v78 = *(&v179 + 1);
      v77 = v179;

      swift_unknownObjectRetain();

      v79 = v77;
      v2 = v76;
      v80 = v78;
      v3 = a1;
      sub_1AF824548(v75, v79, v80);
      swift_unknownObjectRelease();
    }
  }

  v81 = v65[7];
  v151 = v65[6];
  v152 = v81;
  v153[0] = v65[8];
  *(v153 + 9) = *(v65 + 137);
  v82 = v65[3];
  v147 = v65[2];
  v148 = v82;
  v83 = v65[5];
  v149 = v65[4];
  v150 = v83;
  v84 = v65[1];
  v146[0] = *v65;
  v146[1] = v84;
  if (sub_1AF448314(v146) == 1)
  {
    sub_1AFDFE518();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v85 = v147;
    v86 = *(v3 + 184);

    os_unfair_recursive_lock_lock_with_options();
    v87 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
    v90 = v134;
    if (v88 == 2 || (v88 & 1) == 0)
    {
      os_unfair_recursive_lock_unlock();

      v95 = 0x3F80000000000000;
      v96 = v139;
    }

    else
    {
      v91 = *(v86 + 16);
      v92 = 32 * v89;
      v93 = v87;
      os_unfair_lock_lock(*(*(v86 + 32) + 32 * v89 + 24));
      os_unfair_recursive_lock_unlock();
      v94 = *(v91 + v93);
      os_unfair_lock_unlock(*(*(v86 + 32) + v92 + 24));

      if (sub_1AF67CACC(&type metadata for CameraDepthOfField, &off_1F25127C0, v94))
      {
        v34 = 1;
      }

      sub_1AF3CAFEC(v94, v180);
      if (v182)
      {
        v95 = 0x3F80000000000000;
      }

      else
      {
        v97 = v181;

        v99 = sub_1AF0D9730(v184, 4);
        if (*(v98 + 8))
        {
          v100 = v97;
          *(v98 + 32) = v97;
          *(v98 + 40) = 1;
          (v99)(v184, 0);
        }

        else
        {
          (v99)(v184, 0);

          v100 = v97;
        }

        v95 = v100 << 32;
      }

      v96 = v139;
      v90 = v134;
    }

    v101 = *(v2 + 200);
    v102 = 256;
    if (v85)
    {
      v103 = 256;
    }

    else
    {
      v103 = 0;
    }

    if (v90)
    {
      v104 = 0x10000;
    }

    else
    {
      v104 = 0;
    }

    v105 = v104 | v144 | v103;
    v106 = v95 | (v96 << 16) | v34;
    if (!v90)
    {
      v102 = 0;
    }

    v107 = 0x100000000;
    if (!v141)
    {
      v107 = 0;
    }

    v101[3] = v107 | v102 | (v105 << 40) | v128;
    v101[4] = v106;
    v101[5] = 0x3F8000003F800000;
    if ((v128 & (v90 | v141)) == 1 || (sub_1AF0D879C(v183, 2), v108 = v183[0], , v109 = sub_1AF750DEC(v108, *(&v108 + 1), 0, 0, 0, 1, 1), sub_1AF0D8F38(v183), , !v109))
    {
    }

    else
    {
      v110 = objc_allocWithZone(MEMORY[0x1E6974128]);
      swift_unknownObjectRetain();
      v111 = [v110 init];
      v112 = [v111 colorAttachments];
      v113 = [v112 objectAtIndexedSubscript_];

      nullsub_106();
      v115 = v114;
      v117 = v116;
      v119 = v118;
      v121 = v120;
      [v113 setTexture_];
      [v113 setLoadAction_];
      [v113 setStoreAction_];
      [v113 setClearColor_];
      [v113 setLevel_];
      swift_unknownObjectRelease();

      sub_1AF7180FC();

      sub_1AF6F3D60(v111, 0, 0);
      sub_1AF474680(v184);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AFBE7C28()
{

  return v0;
}

double sub_1AFBE7C80()
{
  sub_1AFBE7C28();

  swift_deallocClassInstance();
  return result;
}

uint64_t assignWithCopy for RenderGraph.RenderTargetDesc(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for RenderGraph.RenderTargetDesc(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for RenderGraph.RenderTarget(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RenderGraph.RenderTarget(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RenderGraph.Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RenderGraph.Features(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AFBE7FD0()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v44 = qword_1ED73B840;
  v45 = 0;
  v46 = 2;
  v47 = 0;
  v48 = 2;
  v49 = 0;
  sub_1AF702F3C(1, v25);
  sub_1AFA1CF6C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 56) = &type metadata for DrawCallLayer;
  *(inited + 64) = &off_1F2560C28;
  *(inited + 32) = 0;
  v2 = (inited + 32);
  sub_1AF5FC330(inited, v26, xmmword_1AFE431C0);
  sub_1AF5FD724(v25, v3, v4, v5);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
  v6 = v26[1];
  *(v0 + 16) = v26[0];
  *(v0 + 32) = v6;
  *(v0 + 48) = v27;
  sub_1AF702F3C(1, v28);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 56) = &type metadata for DrawCallLayer;
  *(v7 + 64) = &off_1F2560C28;
  *(v7 + 32) = 1;
  v8 = (v7 + 32);
  sub_1AF5FC330(v7, v29, xmmword_1AFE431C0);
  sub_1AF5FD724(v28, v9, v10, v11);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  v12 = v29[1];
  *(v0 + 56) = v29[0];
  *(v0 + 72) = v12;
  *(v0 + 88) = v30;
  sub_1AF702F3C(1, v31);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  *(v13 + 56) = &type metadata for DrawCallLayer;
  *(v13 + 64) = &off_1F2560C28;
  *(v13 + 32) = 2;
  v14 = (v13 + 32);
  sub_1AF5FC330(v13, v32, xmmword_1AFE431C0);
  sub_1AF5FD724(v31, v15, v16, v17);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
  v18 = v32[1];
  *(v0 + 96) = v32[0];
  *(v0 + 112) = v18;
  *(v0 + 128) = v33;
  sub_1AF5C7B00(v34);
  v19 = v34[1];
  *(v0 + 136) = v34[0];
  *(v0 + 152) = v19;
  *(v0 + 168) = v35;
  sub_1AF5C7B14(v36);
  v20 = v36[1];
  *(v0 + 176) = v36[0];
  *(v0 + 192) = v20;
  *(v0 + 208) = v37;
  sub_1AF5C7CBC(v38);
  v21 = v38[1];
  *(v0 + 216) = v38[0];
  *(v0 + 232) = v21;
  *(v0 + 248) = v39;
  sub_1AF5C8A44(v40);
  v22 = v40[1];
  *(v0 + 256) = v40[0];
  *(v0 + 272) = v22;
  *(v0 + 288) = v41;
  sub_1AF826E08(v42);
  v23 = v42[1];
  *(v0 + 296) = v42[0];
  *(v0 + 312) = v23;
  *(v0 + 328) = v43;
  return v0;
}

uint64_t sub_1AFBE8260()
{
  v0 = swift_allocObject();
  sub_1AFBE7FD0();
  return v0;
}

uint64_t sub_1AFBE82B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615265757161706FLL && a2 == 0xEB000000006F6974 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AFF29660 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69736E656D6964 && a2 == 0xEA0000000000736ELL)
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

uint64_t sub_1AFBE8438@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFBE8750(0, &qword_1EB6434D0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBE86FC();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  type metadata accessor for MTLPixelFormat(0);
  v19 = 0;
  sub_1AFBE87B4(&qword_1EB632A40, type metadata accessor for MTLPixelFormat, protocol conformance descriptor for MTLPixelFormat);
  sub_1AFDFE768();
  v10 = v18[0];
  LOBYTE(v18[0]) = 1;
  sub_1AFDFE738();
  v12 = v11;
  LOBYTE(v18[0]) = 2;
  sub_1AFDFE738();
  v14 = v13;
  type metadata accessor for CGSize(0);
  v19 = 3;
  sub_1AFBE87B4(&qword_1EB640680, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
  sub_1AFDFE768();
  (*(v7 + 8))(v9, v6);
  v15 = v18[0];
  v16 = v18[1];
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 12) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  return result;
}

unint64_t sub_1AFBE86FC()
{
  result = qword_1EB6434D8;
  if (!qword_1EB6434D8)
  {
    result = swift_getWitnessTable(aUo_0, &type metadata for RenderSettings.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6434D8);
  }

  return result;
}

void sub_1AFBE8750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFBE86FC();
    v7 = a3(a1, &type metadata for RenderSettings.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AFBE87B4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1AFBE8810()
{
  result = qword_1EB6434E8;
  if (!qword_1EB6434E8)
  {
    result = swift_getWitnessTable(asc_1AFEA521C, &type metadata for RenderSettings.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6434E8);
  }

  return result;
}

unint64_t sub_1AFBE8868()
{
  result = qword_1EB6434F0;
  if (!qword_1EB6434F0)
  {
    result = swift_getWitnessTable(aEi, &type metadata for RenderSettings.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6434F0);
  }

  return result;
}

unint64_t sub_1AFBE88C0()
{
  result = qword_1EB6434F8;
  if (!qword_1EB6434F8)
  {
    result = swift_getWitnessTable(aE_8, &type metadata for RenderSettings.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6434F8);
  }

  return result;
}

char *sub_1AFBE8934(int a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1AF4228D4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1AF4228D4(v3 > 1, v4 + 1, 1, v2);
  }

  LOBYTE(v59) = 0;
  *(v2 + 2) = v4 + 1;
  v5 = &v2[112 * v4];
  *(v5 + 2) = xmmword_1AFEA52A0;
  v5[48] = 0;
  v5[64] = 1;
  v5[128] = 13;
  if ((a1 & 4) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1AF4228D4(v6 > 1, v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[112 * v7];
    *(v8 + 2) = xmmword_1AFEA52B0;
    v8[48] = 0;
    *(v8 + 7) = *&v62[7];
    *(v8 + 49) = *v62;
    v8[64] = 1;
    *(v8 + 7) = *&v61[15];
    *(v8 + 97) = *v61;
    *(v8 + 81) = v60;
    *(v8 + 65) = v59;
    v8[128] = 13;
  }

LABEL_12:
  if ((a1 & 0x400) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
    }

    v11 = *(v2 + 2);
    v10 = *(v2 + 3);
    if (v11 >= v10 >> 1)
    {
      v2 = sub_1AF4228D4(v10 > 1, v11 + 1, 1, v2);
    }

    *(v2 + 2) = v11 + 1;
    v12 = &v2[112 * v11];
    *(v12 + 2) = xmmword_1AFEA52C0;
    v12[48] = 0;
    *(v12 + 7) = *&v62[7];
    *(v12 + 49) = *v62;
    v12[64] = 1;
    *(v12 + 7) = *&v61[15];
    *(v12 + 97) = *v61;
    *(v12 + 81) = v60;
    *(v12 + 65) = v59;
    v12[128] = 13;
    if ((a1 & 0x40) == 0)
    {
LABEL_14:
      if ((a1 & 0x2000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_39;
    }
  }

  else if ((a1 & 0x40) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_1AF4228D4(v13 > 1, v14 + 1, 1, v2);
  }

  *(v2 + 2) = v14 + 1;
  v15 = &v2[112 * v14];
  *(v15 + 2) = xmmword_1AFE7E5B0;
  v15[48] = 0;
  *(v15 + 7) = *&v62[7];
  *(v15 + 49) = *v62;
  v15[64] = 1;
  *(v15 + 7) = *&v61[15];
  *(v15 + 97) = *v61;
  *(v15 + 81) = v60;
  *(v15 + 65) = v59;
  v15[128] = 13;
  if ((a1 & 0x2000000) == 0)
  {
LABEL_15:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_39:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v17 = *(v2 + 2);
  v16 = *(v2 + 3);
  if (v17 >= v16 >> 1)
  {
    v2 = sub_1AF4228D4(v16 > 1, v17 + 1, 1, v2);
  }

  *(v2 + 2) = v17 + 1;
  v18 = &v2[112 * v17];
  *(v18 + 2) = xmmword_1AFEA52D0;
  v18[48] = 0;
  *(v18 + 7) = *&v62[7];
  *(v18 + 49) = *v62;
  v18[64] = 1;
  *(v18 + 7) = *&v61[15];
  *(v18 + 97) = *v61;
  *(v18 + 81) = v60;
  *(v18 + 65) = v59;
  v18[128] = 13;
  if ((a1 & 0x10000) == 0)
  {
LABEL_16:
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_44:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v20 = *(v2 + 2);
  v19 = *(v2 + 3);
  if (v20 >= v19 >> 1)
  {
    v2 = sub_1AF4228D4(v19 > 1, v20 + 1, 1, v2);
  }

  *(v2 + 2) = v20 + 1;
  v21 = &v2[112 * v20];
  *(v21 + 2) = xmmword_1AFEA52E0;
  v21[48] = 0;
  *(v21 + 7) = *&v62[7];
  *(v21 + 49) = *v62;
  v21[64] = 1;
  *(v21 + 7) = *&v61[15];
  *(v21 + 97) = *v61;
  *(v21 + 81) = v60;
  *(v21 + 65) = v59;
  v21[128] = 13;
  if ((a1 & 0x40000000) == 0)
  {
LABEL_17:
    v9 = "RenderGraphSystem";
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_49:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v23 = *(v2 + 2);
  v22 = *(v2 + 3);
  if (v23 >= v22 >> 1)
  {
    v2 = sub_1AF4228D4(v22 > 1, v23 + 1, 1, v2);
  }

  *(v2 + 2) = v23 + 1;
  v24 = &v2[112 * v23];
  *(v24 + 2) = xmmword_1AFEA52F0;
  v24[48] = 0;
  *(v24 + 7) = *&v62[7];
  *(v24 + 49) = *v62;
  v24[64] = 1;
  *(v24 + 7) = *&v61[15];
  *(v24 + 97) = *v61;
  *(v24 + 81) = v60;
  *(v24 + 65) = v59;
  v24[128] = 13;
  v9 = "RenderGraphSystem";
  if ((a1 & 0x20000) == 0)
  {
LABEL_18:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_54:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v26 = *(v2 + 2);
  v25 = *(v2 + 3);
  if (v26 >= v25 >> 1)
  {
    v2 = sub_1AF4228D4(v25 > 1, v26 + 1, 1, v2);
  }

  *(v2 + 2) = v26 + 1;
  v27 = &v2[112 * v26];
  *(v27 + 2) = *(v9 + 48);
  v27[48] = 0;
  *(v27 + 7) = *&v62[7];
  *(v27 + 49) = *v62;
  *(v27 + 16) = 1;
  *(v27 + 7) = *&v61[12];
  *(v27 + 100) = *v61;
  *(v27 + 84) = v60;
  *(v27 + 68) = v59;
  v27[128] = 14;
  if ((a1 & 0x40000) == 0)
  {
LABEL_19:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_59:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v29 = *(v2 + 2);
  v28 = *(v2 + 3);
  if (v29 >= v28 >> 1)
  {
    v2 = sub_1AF4228D4(v28 > 1, v29 + 1, 1, v2);
  }

  *(v2 + 2) = v29 + 1;
  v30 = &v2[112 * v29];
  *(v30 + 2) = *(v9 + 48);
  v30[48] = 0;
  *(v30 + 7) = *&v62[7];
  *(v30 + 49) = *v62;
  *(v30 + 16) = 2;
  *(v30 + 7) = *&v61[12];
  *(v30 + 100) = *v61;
  *(v30 + 84) = v60;
  *(v30 + 68) = v59;
  v30[128] = 14;
  if ((a1 & 0x80000) == 0)
  {
LABEL_20:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_69;
  }

LABEL_64:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v32 = *(v2 + 2);
  v31 = *(v2 + 3);
  if (v32 >= v31 >> 1)
  {
    v2 = sub_1AF4228D4(v31 > 1, v32 + 1, 1, v2);
  }

  *(v2 + 2) = v32 + 1;
  v33 = &v2[112 * v32];
  *(v33 + 2) = *(v9 + 48);
  v33[48] = 0;
  *(v33 + 7) = *&v62[7];
  *(v33 + 49) = *v62;
  *(v33 + 16) = 3;
  *(v33 + 7) = *&v61[12];
  *(v33 + 100) = *v61;
  *(v33 + 84) = v60;
  *(v33 + 68) = v59;
  v33[128] = 14;
  if ((a1 & 0x100000) == 0)
  {
LABEL_21:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_74;
  }

LABEL_69:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v35 = *(v2 + 2);
  v34 = *(v2 + 3);
  if (v35 >= v34 >> 1)
  {
    v2 = sub_1AF4228D4(v34 > 1, v35 + 1, 1, v2);
  }

  *(v2 + 2) = v35 + 1;
  v36 = &v2[112 * v35];
  *(v36 + 2) = *(v9 + 48);
  v36[48] = 0;
  *(v36 + 7) = *&v62[7];
  *(v36 + 49) = *v62;
  *(v36 + 16) = 4;
  *(v36 + 7) = *&v61[12];
  *(v36 + 100) = *v61;
  *(v36 + 84) = v60;
  *(v36 + 68) = v59;
  v36[128] = 14;
  if ((a1 & 0x200000) == 0)
  {
LABEL_22:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_79;
  }

LABEL_74:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v38 = *(v2 + 2);
  v37 = *(v2 + 3);
  if (v38 >= v37 >> 1)
  {
    v2 = sub_1AF4228D4(v37 > 1, v38 + 1, 1, v2);
  }

  *(v2 + 2) = v38 + 1;
  v39 = &v2[112 * v38];
  *(v39 + 2) = *(v9 + 48);
  v39[48] = 0;
  *(v39 + 7) = *&v62[7];
  *(v39 + 49) = *v62;
  *(v39 + 16) = 5;
  *(v39 + 7) = *&v61[12];
  *(v39 + 100) = *v61;
  *(v39 + 84) = v60;
  *(v39 + 68) = v59;
  v39[128] = 14;
  if ((a1 & 0x400000) == 0)
  {
LABEL_23:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_84;
  }

LABEL_79:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v41 = *(v2 + 2);
  v40 = *(v2 + 3);
  if (v41 >= v40 >> 1)
  {
    v2 = sub_1AF4228D4(v40 > 1, v41 + 1, 1, v2);
  }

  *(v2 + 2) = v41 + 1;
  v42 = &v2[112 * v41];
  *(v42 + 2) = *(v9 + 48);
  v42[48] = 0;
  *(v42 + 7) = *&v62[7];
  *(v42 + 49) = *v62;
  *(v42 + 16) = 6;
  *(v42 + 7) = *&v61[12];
  *(v42 + 100) = *v61;
  *(v42 + 84) = v60;
  *(v42 + 68) = v59;
  v42[128] = 14;
  if ((a1 & 0x800000) == 0)
  {
LABEL_24:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_89;
  }

LABEL_84:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v44 = *(v2 + 2);
  v43 = *(v2 + 3);
  if (v44 >= v43 >> 1)
  {
    v2 = sub_1AF4228D4(v43 > 1, v44 + 1, 1, v2);
  }

  *(v2 + 2) = v44 + 1;
  v45 = &v2[112 * v44];
  *(v45 + 2) = *(v9 + 48);
  v45[48] = 0;
  *(v45 + 7) = *&v62[7];
  *(v45 + 49) = *v62;
  *(v45 + 16) = 7;
  *(v45 + 7) = *&v61[12];
  *(v45 + 100) = *v61;
  *(v45 + 84) = v60;
  *(v45 + 68) = v59;
  v45[128] = 14;
  if ((a1 & 0x1000000) == 0)
  {
LABEL_25:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_94;
  }

LABEL_89:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v47 = *(v2 + 2);
  v46 = *(v2 + 3);
  if (v47 >= v46 >> 1)
  {
    v2 = sub_1AF4228D4(v46 > 1, v47 + 1, 1, v2);
  }

  *(v2 + 2) = v47 + 1;
  v48 = &v2[112 * v47];
  *(v48 + 2) = *(v9 + 48);
  v48[48] = 0;
  *(v48 + 7) = *&v62[7];
  *(v48 + 49) = *v62;
  *(v48 + 16) = 8;
  *(v48 + 7) = *&v61[12];
  *(v48 + 100) = *v61;
  *(v48 + 84) = v60;
  *(v48 + 68) = v59;
  v48[128] = 14;
  if ((a1 & 0x4000000) == 0)
  {
LABEL_26:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_99;
  }

LABEL_94:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v50 = *(v2 + 2);
  v49 = *(v2 + 3);
  if (v50 >= v49 >> 1)
  {
    v2 = sub_1AF4228D4(v49 > 1, v50 + 1, 1, v2);
  }

  *(v2 + 2) = v50 + 1;
  v51 = &v2[112 * v50];
  *(v51 + 2) = xmmword_1AFEA5310;
  v51[48] = 0;
  *(v51 + 7) = *&v62[7];
  *(v51 + 49) = *v62;
  v51[64] = 1;
  *(v51 + 7) = *&v61[15];
  *(v51 + 97) = *v61;
  *(v51 + 81) = v60;
  *(v51 + 65) = v59;
  v51[128] = 13;
  if ((a1 & 0x20000000) == 0)
  {
LABEL_27:
    if ((a1 & 0x80000000) == 0)
    {
      return v2;
    }

    goto LABEL_104;
  }

LABEL_99:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v53 = *(v2 + 2);
  v52 = *(v2 + 3);
  if (v53 >= v52 >> 1)
  {
    v2 = sub_1AF4228D4(v52 > 1, v53 + 1, 1, v2);
  }

  *(v2 + 2) = v53 + 1;
  v54 = &v2[112 * v53];
  *(v54 + 2) = xmmword_1AFEA5320;
  v54[48] = 0;
  *(v54 + 7) = *&v62[7];
  *(v54 + 49) = *v62;
  v54[64] = 1;
  *(v54 + 7) = *&v61[15];
  *(v54 + 97) = *v61;
  *(v54 + 81) = v60;
  *(v54 + 65) = v59;
  v54[128] = 13;
  if (a1 < 0)
  {
LABEL_104:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
    }

    v56 = *(v2 + 2);
    v55 = *(v2 + 3);
    if (v56 >= v55 >> 1)
    {
      v2 = sub_1AF4228D4(v55 > 1, v56 + 1, 1, v2);
    }

    *(v2 + 2) = v56 + 1;
    v57 = &v2[112 * v56];
    *(v57 + 2) = xmmword_1AFEA5330;
    v57[48] = 0;
    *(v57 + 7) = *&v62[7];
    *(v57 + 49) = *v62;
    v57[64] = 1;
    *(v57 + 7) = *&v61[15];
    *(v57 + 97) = *v61;
    *(v57 + 81) = v60;
    *(v57 + 65) = v59;
    v57[128] = 13;
  }

  return v2;
}

uint64_t sub_1AFBE96E8(unsigned int a1)
{
  result = (a1 >> 1) & 1;
  if ((a1 & 8) != 0)
  {
    result = sub_1AFBEA340(result);
    if ((a1 & 0x20) == 0)
    {
LABEL_3:
      if ((a1 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a1 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = sub_1AFBEA338(result);
  if ((a1 & 0x200) == 0)
  {
LABEL_4:
    if ((a1 & 0x8000000) == 0)
    {
      return result;
    }

    return sub_1AFBEA328(result);
  }

LABEL_9:
  result = sub_1AFBEA330(result);
  if ((a1 & 0x8000000) == 0)
  {
    return result;
  }

  return sub_1AFBEA328(result);
}

uint64_t sub_1AFBE973C(char a1, uint64_t a2, double a3, double a4)
{
  if (a1)
  {
    v6 = 7;
  }

  else
  {
    v6 = 5;
  }

  v7 = *v4;
  v8 = a3;
  v9 = v8 * COERCE_FLOAT(*v4);
  if (v4[1])
  {
    v7 = v9;
  }

  v10 = v4[2];
  v11 = a4;
  if (v4[3])
  {
    v10 = (v11 * COERCE_FLOAT(v4[2]));
  }

  v13 = v4[5];
  v12 = v4[6];
  v14 = v4[4];
  if (v7 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v7;
  }

  if (v10 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  if (v16 > v7)
  {
    v7 = v16;
  }

  v17 = fmaxf(v7, 1.0);
  if (v12 < 2)
  {
    CFXTextureDescriptorMakeDefault(&v26);
    sub_1AF466BDC(2, &v26);
    sub_1AF46748C(v14, &v26);
    sub_1AF46749C(v15, &v26);
    sub_1AF4674A4(v16, &v26);
    sub_1AF5C44D4(&v26);
    v22 = log2f(v17);
    v23 = floorf(v22) + 1.0;
    if (v13 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v13;
    }

    sub_1AF4674B4(v24, &v26);
    v21 = 1;
  }

  else
  {
    CFXTextureDescriptorMakeDefault(&v26);
    sub_1AF466BDC(4, &v26);
    sub_1AF46748C(v14, &v26);
    sub_1AF46749C(v15, &v26);
    sub_1AF4674A4(v16, &v26);
    sub_1AF5C44D4(&v26);
    v18 = log2f(v17);
    v19 = floorf(v18) + 1.0;
    if (v13 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v13;
    }

    sub_1AF4674B4(v20, &v26);
    v21 = v12;
  }

  sub_1AF9027BC(v21, &v26);
  sub_1AF48F3F8(&v26);
  sub_1AF5F7474(a2, &v26);
  sub_1AF5F7484(v6, &v26);
  return v26;
}

uint64_t sub_1AFBE990C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v10 = v0[9];
  v11 = v0[10];
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](v1);
  MEMORY[0x1B271ACB0](v2);
  MEMORY[0x1B271ACB0](v3);
  MEMORY[0x1B271ACB0](v4);
  MEMORY[0x1B271ACB0](v5);
  MEMORY[0x1B271ACB0](v6);
  MEMORY[0x1B271ACB0](v7);
  MEMORY[0x1B271ACB0](v8);
  MEMORY[0x1B271ACB0](v10);
  MEMORY[0x1B271ACB0](v11);
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBE9A18()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v11 = v0[10];
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](v1);
  MEMORY[0x1B271ACB0](v2);
  MEMORY[0x1B271ACB0](v3);
  MEMORY[0x1B271ACB0](v4);
  MEMORY[0x1B271ACB0](v5);
  MEMORY[0x1B271ACB0](v6);
  MEMORY[0x1B271ACB0](v7);
  MEMORY[0x1B271ACB0](v8);
  MEMORY[0x1B271ACB0](v9);
  MEMORY[0x1B271ACB0](v11);
  return sub_1AFDFF2A8();
}

uint64_t sub_1AFBE9AE4(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](v2);
  MEMORY[0x1B271ACB0](v3);
  MEMORY[0x1B271ACB0](v4);
  MEMORY[0x1B271ACB0](v5);
  MEMORY[0x1B271ACB0](v6);
  MEMORY[0x1B271ACB0](v7);
  MEMORY[0x1B271ACB0](v8);
  MEMORY[0x1B271ACB0](v9);
  MEMORY[0x1B271ACB0](v11);
  MEMORY[0x1B271ACB0](v12);
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

BOOL sub_1AFBE9BEC(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1AFBEA348(v9, v10);
}

unint64_t sub_1AFBE9C4C()
{
  result = qword_1ED724990;
  if (!qword_1ED724990)
  {
    result = swift_getWitnessTable(byte_1AFEA5378, &type metadata for RenderVariantDescriptor, v0, v1);
    atomic_store(result, &qword_1ED724990);
  }

  return result;
}

unint64_t sub_1AFBE9CA0()
{
  result = qword_1EB643500;
  if (!qword_1EB643500)
  {
    result = swift_getWitnessTable(a9_8, &type metadata for RenderVariant, v0, v1);
    atomic_store(result, &qword_1EB643500);
  }

  return result;
}

unint64_t sub_1AFBE9CF8()
{
  result = qword_1EB643508;
  if (!qword_1EB643508)
  {
    result = swift_getWitnessTable(aF_2, &type metadata for RenderVariant, v0, v1);
    atomic_store(result, &qword_1EB643508);
  }

  return result;
}

unint64_t sub_1AFBE9D50()
{
  result = qword_1EB643510;
  if (!qword_1EB643510)
  {
    result = swift_getWitnessTable(asc_1AFEA5438, &type metadata for RenderVariant, v0, v1);
    atomic_store(result, &qword_1EB643510);
  }

  return result;
}

unint64_t sub_1AFBE9DA8()
{
  result = qword_1EB643518;
  if (!qword_1EB643518)
  {
    result = swift_getWitnessTable(asc_1AFEA5470, &type metadata for RenderVariant, v0, v1);
    atomic_store(result, &qword_1EB643518);
  }

  return result;
}

uint64_t sub_1AFBE9DFC(int a1)
{
  if (a1)
  {
    v2 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v2);

    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    if (a1)
    {
      MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF4B4A0);
      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_23;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    MEMORY[0x1B2718AE0](0x7070696C43657375, 0xED0000202C676E69);
    if ((a1 & 4) == 0)
    {
LABEL_5:
      if ((a1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_23:
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF4B480);
    if ((a1 & 8) == 0)
    {
LABEL_6:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }

LABEL_24:
    MEMORY[0x1B2718AE0](0x6568746944657375, 0xEF202C6564614672);
    if ((a1 & 0x20) == 0)
    {
LABEL_7:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }

LABEL_25:
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF4B460);
    if ((a1 & 0x40) == 0)
    {
LABEL_8:
      if ((a1 & 0x400) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

LABEL_26:
    MEMORY[0x1B2718AE0](0x6E697265646E6572, 0xEF202C72756C4267);
    if ((a1 & 0x400) == 0)
    {
LABEL_9:
      if ((a1 & 0x800) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_28;
    }

LABEL_27:
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF4B440);
    if ((a1 & 0x800) == 0)
    {
LABEL_10:
      if ((a1 & 0x1000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    }

LABEL_28:
    MEMORY[0x1B2718AE0](0x6C6E4F6874706564, 0xEB00000000202C79);
    if ((a1 & 0x1000) == 0)
    {
LABEL_11:
      if ((a1 & 0x2000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_30;
    }

LABEL_29:
    MEMORY[0x1B2718AE0](0x6F5465757161706FLL, 0xEF202C6168706C41);
    if ((a1 & 0x2000) == 0)
    {
LABEL_12:
      if ((a1 & 0x4000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_31;
    }

LABEL_30:
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF4B420);
    if ((a1 & 0x4000) == 0)
    {
LABEL_13:
      if ((a1 & 0x8000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_32;
    }

LABEL_31:
    MEMORY[0x1B2718AE0](0x6465727265666564, 0xEA0000000000202CLL);
    if ((a1 & 0x8000) == 0)
    {
LABEL_14:
      if ((a1 & 0x2000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }

LABEL_32:
    MEMORY[0x1B2718AE0](0x2C656E696C74756FLL, 0xE900000000000020);
    if ((a1 & 0x2000000) == 0)
    {
LABEL_15:
      if ((a1 & 0x4000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_34;
    }

LABEL_33:
    MEMORY[0x1B2718AE0](0x2C6465726579616CLL, 0xE900000000000020);
    if ((a1 & 0x4000000) == 0)
    {
LABEL_16:
      if ((a1 & 0x8000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_35;
    }

LABEL_34:
    MEMORY[0x1B2718AE0](0xD000000000000017, 0x80000001AFF4B400);
    if ((a1 & 0x8000000) == 0)
    {
LABEL_17:
      if ((a1 & 0x20000000) == 0)
      {
LABEL_19:
        sub_1AF8FD3D4(1, 91, 0xE100000000000000);

        sub_1AFDFDE08();
        sub_1AFDFDDD8();
        v3 = sub_1AFDFDE38();
        v5 = v4;
        v7 = v6;
        v9 = v8;

        v10 = MEMORY[0x1B27189E0](v3, v5, v7, v9);

        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        return v10;
      }

LABEL_18:
      MEMORY[0x1B2718AE0](0x5353656C62616E65, 0xEC000000202C4F41);
      goto LABEL_19;
    }

LABEL_35:
    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4B3E0);
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  return 23899;
}

uint64_t sub_1AFBEA21C()
{
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x3A746E6169726176, 0xE900000000000020);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x74616D726F66202CLL, 0xEA0000000000203ALL);
  type metadata accessor for RenderPassDesc(0);
  sub_1AFDFE458();
  return 0;
}

uint64_t sub_1AFBEA3FC(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v46 = a5;
  v47 = a6;
  v16 = *(v9 + 16);
  v17 = *(v9 + 40);
  v18 = v17[200];
  v53 = *(*(v16 + 88) + 8 * a2 + 32);

  if ((v18 & 1) != 0 || *(v53 + 200) == 1)
  {
    *(v16 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v17 = *(v9 + 40);
  }

  v19 = v17[212];
  v51 = a4;
  v48 = a7;
  v49 = a8;
  if (v19)
  {
    v45 = 0;
  }

  else
  {
    v45 = *(v53 + 212);
  }

  v44 = v17[208];
  v52 = *(v9 + 128);
  v20 = *(v9 + 256);
  sub_1AF5B69AC(v17, a1, 0, v9);
  v50 = *(v9 + 256);
  v21 = v50 - v20;
  if (v50 == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  v63 = v22;
  v23 = *(*(v9 + 40) + 24);
  v24 = *(v23 + 16);
  if (v24)
  {
    v42 = v20;
    v43 = v9;
    v25 = v23 + 32;
    v41[1] = v23;

    for (i = 0; i != v24; ++i)
    {
      v27 = (v25 + 40 * i);
      if ((v27[4] & 1) == 0)
      {
        v28 = *v27;
        v30 = v27[2];
        v29 = v27[3];
        v31 = *(v53 + 24);
        v32 = *(v31 + 16);
        if (v32)
        {
          v33 = (v31 + 32);
          while (*v33 != v28)
          {
            v33 += 5;
            if (!--v32)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          sub_1AF640BC8(v52 + v30 * v22 + v29, v21);
        }
      }
    }

    v9 = v43;
    v20 = v42;
  }

  v34 = v51;
  if (*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v9 + 72) * v21);
  }

  if (*(v9 + 184))
  {
    v35 = 0;
  }

  else
  {
    v35 = *(v9 + 168);
  }

  v62 = 0;

  MEMORY[0x1EEE9AC00](v41);
  v56 = v35;
  v57 = -1;
  v36 = v50;
  v58 = v20;
  v59 = v50;
  v60 = v20;
  v61 = v50;
  v54 = v20;
  v55 = v50;
  if (v21 >= 1)
  {
    v37 = v34 | ((HIDWORD(v34) & 1) << 32);
    do
    {
      sub_1AF6248A8(a2, v37, a3 & 1, v16, &v54, sub_1AF5C5E08);
    }

    while (v55 - v54 > 0);
  }

  v38 = *(v9 + 192);
  if (v38)
  {
    v39 = *(v9 + 208);
    sub_1AF75D364(v20, v36, v38);
    sub_1AF75D364(v20, v36, v39);
  }
}

uint64_t sub_1AFBEA740@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(v7, v7[3]);
  v5 = sub_1AFDFEE48();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v5 & 1;
  return result;
}

uint64_t sub_1AFBEA804(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v2[3]);
  sub_1AFDFEEF8();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AFBEA8BC()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED73B840;
  v14 = 0;
  v15 = 2;
  v16 = 0;
  v17 = 2;
  v18 = 0;
  sub_1AF703334(1, &v7);
  v1 = v8;
  v2 = v9;
  v3 = v11;
  v4 = v12;
  v5 = v10 | 1;
  *(v0 + 16) = v7;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v5;
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  return v0;
}

void sub_1AFBEA9A4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  v6 = *(v4 + 40);

  os_unfair_lock_unlock(v6);
}

void sub_1AFBEAA60(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = v1[7];
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  os_unfair_lock_unlock(*(v4 + 40));
  v8 = v1[12];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  v10 = *(v4 + 40);

  os_unfair_lock_unlock(v10);
}

uint64_t sub_1AFBEAC48()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v30 = qword_1ED73B840;
  v31 = 0;
  v32 = 2;
  v33 = 0;
  v34 = 2;
  v35 = 0;
  sub_1AF7031E0(0, v14);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for EffectiveHiddenState;
  *(inited + 40) = &off_1F25695B0;
  sub_1AF5D1EC0(inited);
  sub_1AFB3F8A4(v14, qword_1ED723E90, &type metadata for HiddenOrHasHiddenAncestor, &off_1F2529590);
  swift_setDeallocating();
  v2 = v16;
  *(v0 + 16) = v15;
  *(v0 + 32) = v2;
  *(v0 + 48) = v17;
  sub_1AF7031F4(0, &v18);
  v3 = v19;
  v4 = v20;
  v5 = v22;
  v6 = v21 | 4;
  *(v0 + 56) = v18;
  *(v0 + 64) = v3;
  *(v0 + 68) = v4;
  *(v0 + 72) = v6;
  *(v0 + 80) = 2;
  *(v0 + 88) = v5;
  sub_1AF7031F4(0, v23);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = &type metadata for HiddenOrHasHiddenAncestor;
  *(v7 + 40) = &off_1F2529510;
  sub_1AF5D1EC0(v7);
  sub_1AFB3F8A4(v23, &qword_1ED723D00, &type metadata for EffectiveHiddenState, &off_1F2569630);
  swift_setDeallocating();
  v8 = v25;
  v9 = v26;
  v10 = v28;
  v11 = v29;
  v12 = v27 | 1;
  *(v0 + 96) = v24;
  *(v0 + 104) = v8;
  *(v0 + 108) = v9;
  *(v0 + 112) = v12;
  *(v0 + 120) = v10;
  *(v0 + 128) = v11;
  return v0;
}

uint64_t sub_1AFBEAE54()
{
  v0 = swift_allocObject();
  sub_1AFBEAC48();
  return v0;
}

void sub_1AFBEAEA4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = 0;
  v5 = *(v1 + 32);
  v144[0] = *(v1 + 16);
  v144[1] = v5;
  v145 = *(v1 + 48);
  sub_1AF6B06C0(a1, v144, 0x200000000, v106);
  if (*&v106[0])
  {
    v75 = v3;
    v74 = v1;
    if (v110 >= 1 && v108)
    {
      v6 = v107;
      v82 = v109;
      v7 = v107 + 48 * v108;
      v76 = v7;
      do
      {
        v8 = *(v6 + 40);
        v9 = *(v8 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v9);
        os_unfair_lock_lock(*(v8 + 344));
        v10 = *(v8 + 24);

        memset(v135, 0, sizeof(v135));
        memset(v130, 0, sizeof(v130));
        v11 = sub_1AF65A4B4(v10, &type metadata for EffectiveHiddenState, &off_1F2569630, 0, 0, v135, v130);

        sub_1AF5C43E8(v130, sub_1AF5C4448);
        sub_1AF5C43E8(v135, sub_1AF5C4448);
        if (sub_1AF649CEC(v11))
        {
          sub_1AF649D40(v11, v82);
        }

        else
        {
          v81 = v6;
          v12 = v4;
          v13 = *(v8 + 232);
          v14 = *(v8 + 240);
          v79 = *(v8 + 120);
          v96 = *(v8 + 28);
          v94 = *(v8 + 32);
          v15 = *(v8 + 16);
          v16 = *(v8 + 40);
          v17 = *(v16 + 200);
          v92 = *(*(v15 + 88) + 8 * v11 + 32);

          if ((v17 & 1) != 0 || *(v92 + 200) == 1)
          {
            *(v15 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v16 = *(v8 + 40);
          }

          v90 = *(v8 + 128);
          v18 = *(v8 + 256);
          v19 = v14;
          v4 = v12;
          sub_1AF5B4FCC(v16, v13, v19, 0, v8);
          *&v84 = *(v8 + 256);
          *(&v84 + 1) = v18;
          v20 = v84 - v18;
          if (v84 == v18)
          {
            v21 = 0;
          }

          else
          {
            v21 = v18;
          }

          v88 = v21;
          v130[0] = v21;
          v22 = *(*(v8 + 40) + 24);
          v23 = *(v22 + 16);
          if (v23)
          {
            v87 = v12;
            v24 = v22 + 32;

            for (i = 0; i != v23; ++i)
            {
              v26 = (v24 + 40 * i);
              if ((v26[4] & 1) == 0)
              {
                v27 = *v26;
                v29 = v26[2];
                v28 = v26[3];
                v30 = *(v92 + 24);
                v31 = *(v30 + 16);
                if (v31)
                {
                  v32 = (v30 + 32);
                  while (*v32 != v27)
                  {
                    v32 += 5;
                    if (!--v31)
                    {
                      goto LABEL_16;
                    }
                  }
                }

                else
                {
LABEL_16:
                  sub_1AF640BC8(v90 + v29 * v88 + v28, v20);
                }
              }
            }

            v4 = v87;
          }

          if (*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v8 + 72) * v20);
          }

          if (*(v8 + 184))
          {
            v33 = 0;
          }

          else
          {
            v33 = *(v8 + 168);
          }

          *&v125[0] = 0;

          MEMORY[0x1EEE9AC00](v34);
          v35 = v96;
          v36 = v94;
          LODWORD(v135[3]) = -1;
          v135[4] = *(&v84 + 1);
          v136 = v84;
          v135[0] = *(&v84 + 1);
          *&v137 = v84;
          v135[1] = v84;
          v135[2] = v33;
          if (v20 >= 1)
          {
            do
            {
              LOBYTE(v118) = v36;
              sub_1AF6248A8(v11, v35 | (v36 << 32), v79, v15, v135, sub_1AF5C5E08);
              v36 = v94;
              v35 = v96;
            }

            while ((v135[1] - v135[0]) > 0);
          }

          v37 = *(v8 + 192);
          v6 = v81;
          if (v37)
          {
            v38 = *(v8 + 208);
            sub_1AF75D364(*(&v84 + 1), v84, v37);
            sub_1AF75D364(*(&v84 + 1), v84, v38);
          }

          v7 = v76;
        }

        v6 += 48;
        os_unfair_lock_unlock(*(v8 + 344));
        os_unfair_lock_unlock(*(v8 + 376));
      }

      while (v6 != v7);
    }

    sub_1AF5C43E8(v106, sub_1AF5C3C90);
    v3 = v75;
    v2 = v74;
  }

  v39 = *(v2 + 72);
  v142[0] = *(v2 + 56);
  v142[1] = v39;
  v143 = *(v2 + 88);
  sub_1AF6B06C0(v3, v142, 0x200000000, &v111);
  if (v111)
  {
    v135[0] = v111;
    v136 = v114;
    v137 = v115;
    v138 = v116;
    v139 = v117;
    *&v135[1] = v112;
    *&v135[3] = v113;
    sub_1AF6B9CF0(0);
    sub_1AF5C43E8(&v111, sub_1AF5C3C90);
  }

  v40 = *(v2 + 112);
  v140[0] = *(v2 + 96);
  v140[1] = v40;
  v141 = *(v2 + 128);
  sub_1AF6B06C0(v3, v140, 0x200000000, &v118);
  if (v118)
  {
    v130[0] = v118;
    v131 = v121;
    v132 = v122;
    v133 = v123;
    v134 = v124;
    *&v130[1] = v119;
    *&v130[3] = v120;
    sub_1AF6B9CF0(1);
    sub_1AF5C43E8(&v118, sub_1AF5C3C90);
  }

  sub_1AF6B06C0(v3, v140, 0x200000000, v125);
  if (*&v125[0])
  {
    if (v129 >= 1 && v127)
    {
      v41 = v126;
      v42 = v128;
      v43 = v126 + 48 * v127;
      v77 = v43;
      v78 = v128;
      do
      {
        v44 = *(v41 + 40);
        v45 = *(v44 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v45);
        os_unfair_lock_lock(*(v44 + 344));
        v46 = *(v44 + 24);

        v100 = 0;
        v98 = 0u;
        v99 = 0u;
        memset(v105, 0, 40);
        v47 = sub_1AF65A4B4(v46, 0, 0, &type metadata for EffectiveHiddenState, &off_1F2569630, &v98, v105);

        sub_1AF5C43E8(v105, sub_1AF5C4448);
        sub_1AF5C43E8(&v98, sub_1AF5C4448);
        if (sub_1AF649CEC(v47))
        {
          sub_1AF649D40(v47, v42);
        }

        else
        {
          v83 = v41;
          v48 = *(v44 + 232);
          v49 = *(v44 + 240);
          v50 = *(v44 + 120);
          v97 = *(v44 + 28);
          v95 = *(v44 + 32);
          v51 = *(v44 + 16);
          v52 = *(v44 + 40);
          v53 = *(v52 + 200);
          v93 = *(*(v51 + 88) + 8 * v47 + 32);

          if ((v53 & 1) != 0 || *(v93 + 200) == 1)
          {
            *(v51 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v52 = *(v44 + 40);
          }

          v80 = v50;
          v91 = *(v44 + 128);
          v54 = *(v44 + 256);
          sub_1AF5B4FCC(v52, v48, v49, 0, v44);
          v85 = *(v44 + 256);
          v86 = v54;
          v55 = v85 - v54;
          if (v85 == v54)
          {
            v56 = 0;
          }

          else
          {
            v56 = v54;
          }

          v105[0] = v56;
          v57 = *(*(v44 + 40) + 24);
          v58 = *(v57 + 16);
          if (v58)
          {
            v89 = v85 - v54;
            v59 = v57 + 32;

            for (j = 0; j != v58; ++j)
            {
              v61 = (v59 + 40 * j);
              if ((v61[4] & 1) == 0)
              {
                v62 = *v61;
                v64 = v61[2];
                v63 = v61[3];
                v65 = *(v93 + 24);
                v66 = *(v65 + 16);
                if (v66)
                {
                  v67 = (v65 + 32);
                  while (*v67 != v62)
                  {
                    v67 += 5;
                    if (!--v66)
                    {
                      goto LABEL_55;
                    }
                  }
                }

                else
                {
LABEL_55:
                  sub_1AF640BC8(v91 + v64 * v56 + v63, v89);
                }
              }
            }

            v55 = v89;
          }

          v43 = v77;
          v42 = v78;
          if (*(v51 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v51 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v44 + 72) * v55);
          }

          if (*(v44 + 184))
          {
            v68 = 0;
          }

          else
          {
            v68 = *(v44 + 168);
          }

          v104 = 0;

          MEMORY[0x1EEE9AC00](v69);
          v70 = v97;
          v71 = v95;
          DWORD2(v99) = -1;
          v100 = v86;
          v101 = v85;
          v102 = v86;
          v103 = v85;
          *&v98 = v86;
          *(&v98 + 1) = v85;
          *&v99 = v68;
          if (v55 < 1)
          {

            v41 = v83;
          }

          else
          {
            v41 = v83;
            do
            {
              sub_1AF6248A8(v47, v70 | (v71 << 32), v80, v51, &v98, sub_1AF5C5E08);
              v71 = v95;
              v70 = v97;
            }

            while ((*(&v98 + 1) - v98) > 0);
          }

          v72 = *(v44 + 192);
          if (v72)
          {
            v73 = *(v44 + 208);
            sub_1AF75D364(v86, v85, v72);
            sub_1AF75D364(v86, v85, v73);
          }
        }

        v41 += 48;
        os_unfair_lock_unlock(*(v44 + 344));
        os_unfair_lock_unlock(*(v44 + 376));
      }

      while (v41 != v43);
    }

    sub_1AF5C43E8(v125, sub_1AF5C3C90);
  }
}

void sub_1AFBEB930(uint64_t a1)
{
  v2 = *(v1 + 32);
  v229[0] = *(v1 + 16);
  v229[1] = v2;
  v230 = *(v1 + 48);
  v192 = a1;
  sub_1AF6B06C0(a1, v229, 0x200000000, v218);
  v189 = *&v218[0];
  if (*&v218[0])
  {
    v188 = *(&v218[2] + 1);
    v3 = *(&v219 + 1);
    v4 = *(&v220 + 1);
    v222 = *(v218 + 8);
    v223 = *(&v218[1] + 8);
    if (v221 > 0 && *(&v219 + 1))
    {
      v197 = *(*(&v220 + 1) + 32);
      v5 = *(v220 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v217[3] = v219;
      v217[4] = v220;
      v217[5] = v221;
      v217[0] = v218[0];
      v204 = (v192 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v190 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
      v217[1] = v218[1];
      v217[2] = v218[2];
      sub_1AF5DD298(v217, &v209);
      v6 = 0;
      v7 = 0;
      v186 = v4;
      v187 = v3;
      v185 = v5;
      do
      {
        v198 = v7;
        v195 = v6;
        v8 = (v188 + 48 * v6);
        v10 = *v8;
        v9 = v8[1];
        v11 = *(v8 + 3);
        v200 = *(v8 + 2);
        v12 = *(v8 + 4);
        v13 = *(v8 + 5);
        if (v5)
        {
          v14 = *(v13 + 376);

          os_unfair_lock_lock(v14);
          os_unfair_lock_lock(*(v13 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v197);
        v15 = *(v4 + 4);
        v227[0] = *(v4 + 3);
        v227[1] = v15;
        v228 = v4[10];
        v16 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
        v4[6] = ecs_stack_allocator_allocate(v4[4], 48 * v16, 8);
        v4[7] = v16;
        v4[9] = 0;
        v4[10] = 0;
        v4[8] = 0;
        v17 = v200;
        v18 = sub_1AF64B110(&type metadata for SetActive, &off_1F2569580, v200, v11, v12, v4);
        if (v17)
        {
          v19 = &unk_1ED72C000;
          if (v12)
          {
            v20 = 0;
            v21 = v200;
            v205 = v13;
            do
            {
              if (*(v13 + 120) != v18[v20])
              {
                v22 = v13;
                v23 = v12;
                v24 = v18;
                v25 = v21[v20];

                if (*(v22 + 184))
                {
                  goto LABEL_165;
                }

                v27 = *(*(v22 + 168) + 4 * v25);
                v28 = *(*(v26 + v19[284]) + 12 * v27 + 8);

                v30 = v27 == -1 && v28 == 0;
                if (v30 || (v27 & 0x80000000) != 0 || v204[1] <= v27)
                {
                  goto LABEL_12;
                }

                v31 = (*v204 + 12 * v27);
                if (v28 != -1 && v31[2] != v28)
                {
                  goto LABEL_12;
                }

                v33 = *(*(v192 + 144) + 8 * *v31 + 32);
                v34 = *(v192 + v190);
                if (v24[v20] != *(v33 + 120))
                {
                  LODWORD(v184) = v24[v20];
                  v35 = *(v33 + 240) - *(v33 + 232);
                  v196 = v33;
                  v183 = v34;
                  if (v35 < 2)
                  {
                    v42 = *(v33 + 16);
                    v43 = *(v33 + 188);
                    v44 = *(v33 + 24);
                    v45 = *(v42 + 136);

                    os_unfair_lock_lock(v45);
                    v46 = *(v42 + 104);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *(v42 + 104) = v46;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      *(v42 + 104) = sub_1AFC0D9B8(v46);
                    }

                    sub_1AF6213F4(v43, v184);
                    if (*(*(*(v42 + 88) + 8 * v44 + 32) + 200) == 1)
                    {
                      *(v42 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                    }

                    os_unfair_lock_unlock(*(v42 + 136));

                    *(v196 + 120) = v184;

                    v19 = &unk_1ED72C000;
                    v21 = v200;
                  }

                  else
                  {
                    v194 = *(v31 + 2);
                    v178 = *v34;
                    v36 = *(v33 + 24);
                    v202 = *(v33 + 28);
                    v203 = v36;
                    v201 = *(v33 + 32);
                    v37 = *(v33 + 16);
                    v38 = *(*(v37 + 88) + 8 * v36 + 32);
                    v39 = *(v33 + 40);
                    v40 = v39[200];

                    v199 = v38;

                    v41 = v196;
                    if ((v40 & 1) != 0 || *(v199 + 200) == 1)
                    {
                      *(v37 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                      v39 = v41[5];
                    }

                    v179 = v37;
                    if (v39[212])
                    {
                      v177 = 0;
                    }

                    else
                    {
                      v177 = *(v199 + 212);
                    }

                    v48 = v198;
                    LODWORD(v176) = v39[208];
                    v193 = v41[16];
                    v49 = v41[32];
                    sub_1AF5B69AC(v39, v194, 0, v196);
                    v50 = v196;
                    v198 = v48;
                    v51 = *(v196 + 256);
                    v181 = v49;
                    v182 = v51;
                    v52 = v51 - v49;
                    if (v51 == v49)
                    {
                      v53 = 0;
                    }

                    else
                    {
                      v53 = v49;
                    }

                    v191 = v53;
                    v208[0] = v53;
                    v54 = *(*(v196 + 40) + 24);
                    v55 = *(v54 + 16);
                    if (v55)
                    {
                      v194 = v52;
                      v56 = v54 + 32;
                      v175[1] = v54;

                      for (i = 0; i != v55; ++i)
                      {
                        v58 = (v56 + 40 * i);
                        if ((v58[4] & 1) == 0)
                        {
                          v59 = *v58;
                          v61 = v58[2];
                          v60 = v58[3];
                          v62 = *(v199 + 24);
                          v63 = *(v62 + 16);
                          if (v63)
                          {
                            v64 = (v62 + 32);
                            while (*v64 != v59)
                            {
                              v64 += 5;
                              if (!--v63)
                              {
                                goto LABEL_46;
                              }
                            }
                          }

                          else
                          {
LABEL_46:
                            sub_1AF640BC8(v193 + v61 * v191 + v60, v194);
                          }
                        }
                      }

                      v50 = v196;
                      v52 = v194;
                    }

                    v65 = v179;
                    if (*(v179 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
                    {
                      vfx_counters.add(_:_:)(*(v179 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v50 + 72) * v52);
                      v50 = v196;
                    }

                    v66 = *(v50 + 168);
                    v67 = *(v50 + 184);
                    v194 = v52;
                    if (v67)
                    {
                      v68 = 0;
                    }

                    else
                    {
                      v68 = v66;
                    }

                    v207 = 0;

                    MEMORY[0x1EEE9AC00](v69);
                    v70 = v202;
                    LODWORD(v175[-14]) = v202;
                    v71 = v201;
                    BYTE4(v175[-14]) = v201;
                    v175[-13] = v196;
                    v175[-12] = v199;
                    *&v175[-11] = 0u;
                    *&v175[-9] = 0u;
                    v175[-7] = v208;
                    v175[-6] = v193;
                    v175[-5] = &v207;
                    LOBYTE(v175[-4]) = v176;
                    HIDWORD(v175[-4]) = v203;
                    LOBYTE(v175[-3]) = v177;
                    v173 = v178;
                    v212 = -1;
                    v213 = v181;
                    v214 = v182;
                    v215 = v181;
                    v216 = v182;
                    v209 = v181;
                    v210 = v182;
                    v211 = v68;
                    v191 = v72;
                    if (v194 < 1)
                    {

                      v21 = v200;
                    }

                    else
                    {
                      v21 = v200;
                      v73 = v65;
                      v74 = v184;
                      do
                      {
                        v206 = v71;
                        sub_1AF6248A8(v203, v70 | (v71 << 32), v74, v73, &v209, sub_1AF5C5E08);
                        v71 = v201;
                        v70 = v202;
                      }

                      while (v210 - v209 > 0);
                    }

                    v75 = *(v196 + 192);
                    if (v75)
                    {
                      v76 = *(v196 + 216);
                      v202 = *(v196 + 208);
                      v203 = v76;
                      v77 = v181;
                      sub_1AF75D364(v181, v182, v75);
                      sub_1AF75D364(v77, v182, v202);
                    }

                    v19 = &unk_1ED72C000;
                  }
                }

                if (v204[1] > v27 && ((v78 = (*v204 + 12 * v27), v28 == -1) || v78[2] == v28))
                {
                  v79 = *(v78 + 2);
                  v80 = *(*(v192 + 144) + 8 * *v78 + 32);
                  thread_worker_index(v29);
                  v81 = *(v80 + 192);
                  if (v81)
                  {
                    v82 = *(v80 + 208);
                    *(v81 + 8 * (v79 >> 6)) |= 1 << v79;
                    *(v82 + 8 * (v79 >> 6)) &= ~(1 << v79);
                  }

                  if (*(*(v80 + 40) + 213) == 1)
                  {
                    v83 = *(v80 + 48);
                    v84 = (v83 + 32);
                    v85 = *(v83 + 16) + 1;
                    while (--v85)
                    {
                      v86 = v84 + 5;
                      v87 = *v84;
                      v84 += 5;
                      if (v87 == &type metadata for PropagateDirtiness)
                      {
                        v88 = *(v86 - 2);
                        goto LABEL_80;
                      }
                    }

                    v88 = 0;
LABEL_80:
                    v89 = *(v80 + 128);
                    v90 = *(v80 + 184);

                    if (v90)
                    {
                      goto LABEL_165;
                    }

                    v92 = *(*(v80 + 168) + 4 * v79);
                    v93 = (v89 + v88 + 8 * v79);
                    v94 = *(*(v91 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v92 + 8);

                    v95 = *v93;
                    v96 = v93[1];
                    if (v95 != -1 || v96 != 0)
                    {
                      sub_1AF70D248(&v209, v92 | (v94 << 32), v95 | (v96 << 32));
                    }

                    v19 = &unk_1ED72C000;
                    v18 = v24;
                    v21 = v200;
                  }

                  else
                  {
                    v18 = v24;
                    v19 = &unk_1ED72C000;
                  }
                }

                else
                {
LABEL_12:
                  v18 = v24;
                }

                v12 = v23;
                v13 = v205;
              }

              ++v20;
            }

            while (v20 != v12);
          }
        }

        else
        {
          v98 = &unk_1ED72C000;
          if (v10 != v9)
          {
            do
            {
              if (*(v13 + 120) != v18[v10])
              {

                if (*(v13 + 184))
                {
                  goto LABEL_165;
                }

                v100 = *(*(v13 + 168) + 4 * v10);
                v101 = *(*(v99 + v98[284]) + 12 * v100 + 8);

                v103 = v100 == -1 && v101 == 0;
                if (!v103 && (v100 & 0x80000000) == 0 && v204[1] > v100)
                {
                  v104 = (*v204 + 12 * v100);
                  if (v101 == -1 || v104[2] == v101)
                  {
                    v106 = *(*(v192 + 144) + 8 * *v104 + 32);
                    v107 = *(v192 + v190);
                    if (v18[v10] != *(v106 + 120))
                    {
                      LODWORD(v193) = v18[v10];
                      v108 = *(v106 + 240) - *(v106 + 232);
                      v194 = v106;
                      v191 = v107;
                      if (v108 < 2)
                      {
                        v180 = v18;
                        v114 = *(v106 + 16);
                        v115 = *(v106 + 188);
                        v116 = *(v106 + 24);
                        v117 = *(v114 + 136);

                        os_unfair_lock_lock(v117);
                        v118 = *(v114 + 104);
                        v119 = swift_isUniquelyReferenced_nonNull_native();
                        *(v114 + 104) = v118;
                        if ((v119 & 1) == 0)
                        {
                          *(v114 + 104) = sub_1AFC0D9B8(v118);
                        }

                        sub_1AF6213F4(v115, v193);
                        if (*(*(*(v114 + 88) + 8 * v116 + 32) + 200) == 1)
                        {
                          *(v114 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                        }

                        os_unfair_lock_unlock(*(v114 + 136));

                        *(v194 + 120) = v193;

                        v98 = &unk_1ED72C000;
                        v18 = v180;
                      }

                      else
                      {
                        v181 = v9;
                        v109 = *(v104 + 2);
                        v179 = *v107;
                        v110 = *(v106 + 24);
                        v202 = *(v106 + 28);
                        v203 = v110;
                        v201 = *(v106 + 32);
                        v184 = *(v106 + 16);
                        v111 = *(*(v184 + 88) + 8 * v110 + 32);
                        v112 = *(v106 + 40);
                        v113 = v112[200];

                        v200 = v111;

                        if ((v113 & 1) != 0 || *(v200 + 200) == 1)
                        {
                          *(v184 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                          v112 = *(v194 + 40);
                        }

                        if (v112[212])
                        {
                          LODWORD(v178) = 0;
                        }

                        else
                        {
                          LODWORD(v178) = *(v200 + 212);
                        }

                        v177 = v112[208];
                        v120 = v194;
                        v199 = *(v194 + 128);
                        v121 = *(v194 + 256);
                        v122 = v112;
                        v123 = v198;
                        sub_1AF5B69AC(v122, v109, 0, v194);
                        v198 = v123;
                        v182 = *(v120 + 256);
                        v183 = v121;
                        v196 = v182 - v121;
                        if (v182 == v121)
                        {
                          v124 = 0;
                        }

                        else
                        {
                          v124 = v121;
                        }

                        v125 = v124;
                        v208[0] = v124;
                        v126 = *(*(v120 + 40) + 24);
                        v127 = *(v126 + 16);
                        if (v127)
                        {
                          v180 = v18;
                          v128 = v126 + 32;
                          v176 = v126;

                          for (j = 0; j != v127; ++j)
                          {
                            v130 = (v128 + 40 * j);
                            if ((v130[4] & 1) == 0)
                            {
                              v131 = *v130;
                              v133 = v130[2];
                              v132 = v130[3];
                              v134 = v200[3];
                              v135 = *(v134 + 16);
                              if (v135)
                              {
                                v136 = (v134 + 32);
                                while (*v136 != v131)
                                {
                                  v136 += 5;
                                  if (!--v135)
                                  {
                                    goto LABEL_123;
                                  }
                                }
                              }

                              else
                              {
LABEL_123:
                                sub_1AF640BC8(v199 + v133 * v125 + v132, v196);
                              }
                            }
                          }

                          v18 = v180;
                        }

                        v137 = v184;
                        v138 = v194;
                        v139 = v196;
                        if (*(v184 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
                        {
                          vfx_counters.add(_:_:)(*(v184 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v194 + 72) * v196);
                        }

                        if (*(v138 + 184))
                        {
                          v140 = 0;
                        }

                        else
                        {
                          v140 = *(v138 + 168);
                        }

                        v207 = 0;

                        MEMORY[0x1EEE9AC00](v141);
                        v142 = v202;
                        LODWORD(v175[-14]) = v202;
                        v143 = v201;
                        BYTE4(v175[-14]) = v201;
                        v144 = v200;
                        v175[-13] = v145;
                        v175[-12] = v144;
                        *&v175[-11] = 0u;
                        *&v175[-9] = 0u;
                        v175[-7] = v208;
                        v175[-6] = v199;
                        v175[-5] = &v207;
                        LOBYTE(v175[-4]) = v177;
                        HIDWORD(v175[-4]) = v203;
                        LOBYTE(v175[-3]) = v178;
                        v173 = v179;
                        v212 = -1;
                        v213 = v183;
                        v214 = v182;
                        v215 = v183;
                        v216 = v182;
                        v209 = v183;
                        v210 = v182;
                        v211 = v140;
                        v176 = v146;
                        if (v139 >= 1)
                        {
                          v147 = v137;
                          v148 = v193;
                          do
                          {
                            v206 = v143;
                            sub_1AF6248A8(v203, v142 | (v143 << 32), v148, v147, &v209, sub_1AF5C44B0);
                            v143 = v201;
                            v142 = v202;
                          }

                          while (v210 - v209 > 0);
                        }

                        v149 = *(v194 + 192);
                        v9 = v181;
                        if (v149)
                        {
                          v150 = *(v194 + 216);
                          v202 = *(v194 + 208);
                          v203 = v150;
                          v152 = v182;
                          v151 = v183;
                          sub_1AF75D364(v183, v182, v149);
                          sub_1AF75D364(v151, v152, v202);
                        }

                        v98 = &unk_1ED72C000;
                      }
                    }

                    if (v204[1] > v100)
                    {
                      v153 = (*v204 + 12 * v100);
                      if (v101 == -1 || v153[2] == v101)
                      {
                        v154 = *(v153 + 2);
                        v155 = *(*(v192 + 144) + 8 * *v153 + 32);
                        thread_worker_index(v102);
                        v156 = *(v155 + 192);
                        if (v156)
                        {
                          v157 = *(v155 + 208);
                          *(v156 + 8 * (v154 >> 6)) |= 1 << v154;
                          *(v157 + 8 * (v154 >> 6)) &= ~(1 << v154);
                        }

                        if (*(*(v155 + 40) + 213) == 1)
                        {
                          v158 = *(v155 + 48);
                          v159 = (v158 + 32);
                          v160 = *(v158 + 16) + 1;
                          v180 = v18;
                          while (--v160)
                          {
                            v161 = v159 + 5;
                            v162 = *v159;
                            v159 += 5;
                            if (v162 == &type metadata for PropagateDirtiness)
                            {
                              v163 = *(v161 - 2);
                              goto LABEL_154;
                            }
                          }

                          v163 = 0;
LABEL_154:
                          v164 = *(v155 + 128);
                          v165 = *(v155 + 184);

                          if (v165)
                          {
LABEL_165:
                            v174 = 0;
                            v173 = 204;
                            sub_1AFDFE518();
                            __break(1u);
                            return;
                          }

                          v167 = *(*(v155 + 168) + 4 * v154);
                          v168 = (v164 + v163 + 8 * v154);
                          v169 = *(*(v166 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v167 + 8);

                          v170 = *v168;
                          v171 = v168[1];
                          if (v170 != -1 || v171 != 0)
                          {
                            sub_1AF70D248(&v209, v167 | (v169 << 32), v170 | (v171 << 32));
                          }

                          v98 = &unk_1ED72C000;
                          v18 = v180;
                        }

                        else
                        {
                          v98 = &unk_1ED72C000;
                        }
                      }
                    }
                  }
                }
              }

              ++v10;
            }

            while (v10 != v9);
          }
        }

        v224 = v189;
        v225 = v222;
        v226 = v223;
        v4 = v186;
        v7 = v198;
        sub_1AF630994(v186, &v224, v227);
        sub_1AF62D29C(v13);
        ecs_stack_allocator_pop_snapshot(v197);
        v5 = v185;
        if (v185)
        {
          os_unfair_lock_unlock(*(v13 + 344));
          os_unfair_lock_unlock(*(v13 + 376));
        }

        v6 = v195 + 1;
      }

      while (v195 + 1 != v187);
      sub_1AF5C43E8(v218, sub_1AF5C3C90);
    }

    sub_1AF5C43E8(v218, sub_1AF5C3C90);
  }
}

uint64_t sub_1AFBEC974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F74636166 && a2 == 0xE600000000000000)
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

uint64_t sub_1AFBEC9F8(uint64_t a1)
{
  v2 = sub_1AFBEE058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBECA34(uint64_t a1)
{
  v2 = sub_1AFBEE058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBECA70@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1AFBEE0AC(0, &qword_1EB643520, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBEE058();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AFDFE738();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_1AFBECC00(void *a1)
{
  sub_1AFBEE0AC(0, &qword_1EB643530, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBEE058();
  sub_1AFDFF3F8();
  sub_1AFDFE8E8();
  return (*(v4 + 8))(v6, v3);
}

void sub_1AFBECD58(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = *(v1 + 56);
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  v8 = *(v4 + 40);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_1AFBECEC4()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED73B840;
  v12 = 0;
  v13 = 2;
  v14 = 0;
  v15 = 2;
  v16 = 0;
  sub_1AF8D3EDC(2, 1, 1, v5);
  v1 = v5[1];
  *(v0 + 16) = v5[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v6;
  sub_1AF7033A4(1, v7);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for LastFrameWorldTransform;
  *(inited + 40) = &off_1F2529E30;
  sub_1AF5D1EC0(inited);
  sub_1AFBEDFA0(v7, sub_1AFBEE000);
  swift_setDeallocating();
  v3 = v9;
  *(v0 + 56) = v8;
  *(v0 + 72) = v3;
  *(v0 + 88) = v10;
  return v0;
}

uint64_t sub_1AFBECFFC()
{
  v0 = swift_allocObject();
  sub_1AFBECEC4();
  return v0;
}

void sub_1AFBED04C(uint64_t a1)
{
  v2 = 0;
  v260[0] = *(v1 + 56);
  v260[1] = *(v1 + 72);
  v261 = *(v1 + 88);
  sub_1AF6B06C0(a1, v260, 0x200000000, v240);
  if (*&v240[0])
  {
    if (v244 >= 1 && v242)
    {
      v3 = v241;
      v4 = v243;
      v5 = v241 + 48 * v242;
      v193 = v5;
      v195 = v243;
      do
      {
        v6 = *(v3 + 40);
        v7 = *(v6 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v7);
        os_unfair_lock_lock(*(v6 + 344));
        v8 = *(v6 + 24);

        memset(v245, 0, sizeof(v245));
        v259 = 0;
        v258 = 0u;
        v257 = 0u;
        v9 = sub_1AF65A4B4(v8, &type metadata for LastFrameWorldTransform, &off_1F2529EB0, 0, 0, v245, &v257);

        sub_1AFBEDFA0(&v257, sub_1AF5C4448);
        sub_1AFBEDFA0(v245, sub_1AF5C4448);
        if (sub_1AF649CEC(v9))
        {
          sub_1AF649D40(v9, v4);
        }

        else
        {
          v203 = v3;
          v10 = *(v6 + 232);
          v11 = *(v6 + 240);
          v12 = *(v6 + 120);
          v234 = *(v6 + 28);
          v229 = *(v6 + 32);
          v13 = *(v6 + 16);
          v14 = *(v6 + 40);
          v15 = *(v14 + 200);
          v218 = *(*(v13 + 88) + 8 * v9 + 32);

          if ((v15 & 1) != 0 || *(v218 + 200) == 1)
          {
            *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v14 = *(v6 + 40);
          }

          v200 = v12;
          v206 = *(v6 + 128);
          v16 = *(v6 + 256);
          sub_1AF5B4FCC(v14, v10, v11, 0, v6);
          v209 = *(v6 + 256);
          v17 = v209 - v16;
          v212 = v16;
          if (v209 == v16)
          {
            v18 = 0;
          }

          else
          {
            v18 = v16;
          }

          v215 = v18;
          *&v257 = v18;
          v19 = *(*(v6 + 40) + 24);
          v20 = *(v19 + 16);
          if (v20)
          {
            v21 = v19 + 32;

            for (i = 0; i != v20; ++i)
            {
              v23 = (v21 + 40 * i);
              if ((v23[4] & 1) == 0)
              {
                v24 = *v23;
                v26 = v23[2];
                v25 = v23[3];
                v27 = *(v218 + 24);
                v28 = *(v27 + 16);
                if (v28)
                {
                  v29 = (v27 + 32);
                  while (*v29 != v24)
                  {
                    v29 += 5;
                    if (!--v28)
                    {
                      goto LABEL_16;
                    }
                  }
                }

                else
                {
LABEL_16:
                  sub_1AF640BC8(v206 + v26 * v215 + v25, v17);
                }
              }
            }
          }

          v4 = v195;
          if (*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v6 + 72) * v17);
          }

          if (*(v6 + 184))
          {
            v30 = 0;
          }

          else
          {
            v30 = *(v6 + 168);
          }

          *&v255[0] = 0;

          MEMORY[0x1EEE9AC00](v31);
          v32 = v234;
          v33 = v229;
          *&v245[24] = -1;
          *&v245[32] = v16;
          v246 = v209;
          v247 = v16;
          v248 = v209;
          *v245 = v16;
          *&v245[8] = v209;
          *&v245[16] = v30;
          if (v17 < 1)
          {

            v3 = v203;
          }

          else
          {
            v3 = v203;
            do
            {
              LOBYTE(v252) = v33;
              sub_1AF6248A8(v9, v32 | (v33 << 32), v200, v13, v245, sub_1AF5C5ACC);
              v33 = v229;
              v32 = v234;
            }

            while ((*&v245[8] - *v245) > 0);
          }

          v34 = *(v6 + 192);
          if (v34)
          {
            v35 = *(v6 + 208);
            sub_1AF75D364(v212, v209, v34);
            sub_1AF75D364(v212, v209, v35);
          }

          v5 = v193;
        }

        v3 += 48;
        os_unfair_lock_unlock(*(v6 + 344));
        os_unfair_lock_unlock(*(v6 + 376));
      }

      while (v3 != v5);
    }

    sub_1AFBEDFA0(v240, sub_1AF5C3C90);
  }

  v36 = *(v189 + 32);
  v257 = *(v189 + 16);
  v258 = v36;
  v259 = *(v189 + 48);
  sub_1AF6B06C0(a1, &v257, 0x200000000, v245);
  if (*v245)
  {
    if (v251 >= 1)
    {
      v194 = v248;
      if (v248)
      {
        v37 = 0;
        v192 = v246;
        v38 = v250;
        v198 = *(v250 + 32);
        v39 = *(v249 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v252 = *v245;
        v253 = *&v245[8];
        v254 = *&v245[24];
        v190 = v39;
        do
        {
          v199 = v2;
          v196 = v37;
          v40 = (v192 + 48 * v37);
          v41 = *v40;
          v235 = v40[1];
          v42 = *(v40 + 2);
          v43 = *(v40 + 3);
          v45 = *(v40 + 4);
          v44 = *(v40 + 5);
          if (v39)
          {
            v46 = *(v44 + 376);

            os_unfair_lock_lock(v46);
            os_unfair_lock_lock(*(v44 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v198);
          v47 = *(v38 + 64);
          v255[0] = *(v38 + 48);
          v255[1] = v47;
          v256 = *(v38 + 80);
          v48 = *(*(*(*(v44 + 40) + 16) + 32) + 16) + 1;
          *(v38 + 48) = ecs_stack_allocator_allocate(*(v38 + 32), 48 * v48, 8);
          *(v38 + 56) = v48;
          *(v38 + 72) = 0;
          *(v38 + 80) = 0;
          *(v38 + 64) = 0;
          v49 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v42, v43, v45, v38);
          v50 = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v42, v43, v45, v38);
          v197 = v44;
          v51 = sub_1AF64B110(&type metadata for SmoothMotion, &off_1F25697A8, v42, v43, v45, v38);
          v52 = v51;
          if (v42)
          {
            if (v45)
            {
              v53 = (v49 + 32);
              v54 = v50 + 32;
              v55 = v196;
              do
              {
                v61 = *(v54 - 2);
                v60 = *(v54 - 1);
                v62 = *v54;
                v63 = *(v54 + 1);
                v201 = *v52;
                v210 = *v53;
                v213 = v53[1];
                v204 = v53[-2];
                v207 = v53[-1];
                v267[0] = 0uLL;
                v266 = 0uLL;
                v265.i32[2] = 0;
                v265.i64[0] = 0;
                v264.i32[2] = 0;
                v264.i64[0] = 0;
                v263.i32[2] = 0;
                v263.i64[0] = 0;
                v262.i32[2] = 0;
                v262.i64[0] = 0;
                v219 = v60;
                v230 = v61;
                v216 = v62;
                v236 = v63;
                v64 = sub_1AF120324(v267, &v265, &v263, v61, v60, v62, v63);
                v65 = sub_1AF120324(&v266, &v264, &v262, v204, v207, v210, v213);
                if (v64)
                {
                  v56 = v230;
                  v57 = v236;
                  v58 = v216;
                  v59 = v219;
                  if (v65)
                  {
                    v66 = vmulq_f32(v267[0], v266);
                    v67 = vaddq_f32(v267[0], v266);
                    v231 = v266;
                    v237 = v267[0];
                    v68 = 1.0;
                    if (vaddv_f32(vadd_f32(*v66.i8, *&vextq_s8(v66, v66, 8uLL))) >= 0.0)
                    {
                      v87 = vsubq_f32(v267[0], v266);
                      v88 = vmulq_f32(v87, v87);
                      v89 = vmulq_f32(v67, v67);
                      v90 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v88.i8, *&vextq_s8(v88, v88, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v89.i8, *&vextq_s8(v89, v89, 8uLL)))));
                      v91 = v90 + v90;
                      v92 = 1.0;
                      if ((v90 + v90) != 0.0)
                      {
                        v92 = sinf(v90 + v90) / v91;
                      }

                      v75 = v201;
                      v93 = (1.0 - v201) * v91;
                      if (v93 != 0.0)
                      {
                        v222 = v92;
                        v94 = sinf((1.0 - v201) * v91);
                        v92 = v222;
                        v75 = v201;
                        v68 = v94 / v93;
                      }

                      v95 = v75 * v91;
                      v96 = 1.0;
                      if (v95 != 0.0)
                      {
                        v223 = v92;
                        v97 = sinf(v95);
                        v92 = v223;
                        v75 = v201;
                        v96 = v97 / v95;
                      }

                      v98 = v92;
                      v99 = vrecpe_f32(LODWORD(v92));
                      v100 = vmul_f32(v99, vrecps_f32(LODWORD(v98), v99));
                      v101 = vmul_f32(v100, vrecps_f32(LODWORD(v98), v100)).f32[0];
                      v100.f32[0] = (1.0 - v201) * (v101 * v68);
                      v85 = vdupq_lane_s32(v100, 0);
                      v86 = vmulq_n_f32(v231, v75 * (v101 * v96));
                    }

                    else
                    {
                      v69 = vmulq_f32(v67, v67);
                      v70 = vsubq_f32(v267[0], v266);
                      v71 = vmulq_f32(v70, v70);
                      v72 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v69.i8, *&vextq_s8(v69, v69, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v71.i8, *&vextq_s8(v71, v71, 8uLL)))));
                      v73 = v72 + v72;
                      v74 = 1.0;
                      if ((v72 + v72) != 0.0)
                      {
                        v74 = sinf(v72 + v72) / v73;
                      }

                      v75 = v201;
                      v76 = (1.0 - v201) * v73;
                      if (v76 != 0.0)
                      {
                        v220 = v74;
                        v77 = sinf((1.0 - v201) * v73);
                        v74 = v220;
                        v75 = v201;
                        v68 = v77 / v76;
                      }

                      v78 = v75 * v73;
                      v79 = 1.0;
                      if (v78 != 0.0)
                      {
                        v221 = v74;
                        v80 = sinf(v78);
                        v74 = v221;
                        v75 = v201;
                        v79 = v80 / v78;
                      }

                      v81 = v74;
                      v82 = vrecpe_f32(LODWORD(v74));
                      v83 = vmul_f32(v82, vrecps_f32(LODWORD(v81), v82));
                      v84 = vmul_f32(v83, vrecps_f32(LODWORD(v81), v83)).f32[0];
                      v83.f32[0] = (1.0 - v201) * (v84 * v68);
                      v85 = vdupq_lane_s32(v83, 0);
                      v86 = vmulq_n_f32(vnegq_f32(v231), v75 * (v84 * v79));
                    }

                    v102 = vmlaq_f32(v86, v237, v85);
                    v103 = vmulq_f32(v102, v102);
                    *v103.i8 = vadd_f32(*v103.i8, *&vextq_s8(v103, v103, 8uLL));
                    v104 = vdupq_lane_s32(vadd_f32(*v103.i8, vdup_lane_s32(*v103.i8, 1)), 0);
                    v105 = vrsqrteq_f32(v104);
                    v106 = vmulq_f32(v105, vrsqrtsq_f32(v104, vmulq_f32(v105, v105)));
                    v107 = vbslq_s8(vceqzq_f32(v104), v102, vmulq_f32(vmulq_f32(v106, vrsqrtsq_f32(v104, vmulq_f32(v106, v106))), v102));
                    v57 = vmlaq_n_f32(v265, vsubq_f32(v264, v265), v75);
                    v57.i32[3] = 1.0;
                    v108 = vmlaq_n_f32(v263, vsubq_f32(v262, v263), v75);
                    v109 = vabsq_f32(v108);
                    v109.i32[3] = 0;
                    v110.i64[0] = 0x8000000080000000;
                    v110.i64[1] = 0x8000000080000000;
                    v111 = vorrq_s8(vandq_s8(v108, v110), vabsq_f32(vmaxnmq_f32(v109, xmmword_1AFE20A30)));
                    v112 = vmulq_f32(v107, v107);
                    v113 = vmulq_laneq_f32(v107, v107, 3);
                    v114 = vmuls_lane_f32(v107.f32[0], *v107.f32, 1);
                    v115 = vmuls_lane_f32(v107.f32[1], v107, 2);
                    v107.f32[0] = vmuls_lane_f32(v107.f32[0], v107, 2);
                    v116 = vaddq_f32(v111, v111);
                    v117.i32[3] = 0;
                    v117.f32[0] = (0.5 - v112.f32[1]) - v112.f32[2];
                    v117.f32[1] = v114 + v113.f32[2];
                    v117.f32[2] = v107.f32[0] - v113.f32[1];
                    v56 = vmulq_n_f32(v117, v116.f32[0]);
                    v112.f32[0] = 0.5 - v112.f32[0];
                    v118.i32[3] = 0;
                    v118.f32[0] = v114 - v113.f32[2];
                    v118.f32[1] = v112.f32[0] - v112.f32[2];
                    v118.f32[2] = v115 + v113.f32[0];
                    v59 = vmulq_lane_f32(v118, *v116.f32, 1);
                    v113.f32[0] = v115 - v113.f32[0];
                    v119.i32[3] = 0;
                    v119.f32[0] = v107.f32[0] + v113.f32[1];
                    v119.i32[1] = v113.i32[0];
                    v119.f32[2] = v112.f32[0] - v112.f32[1];
                    v58 = vmulq_laneq_f32(v119, v116, 2);
                  }
                }

                else
                {
                  v56 = v230;
                  v57 = v236;
                  v58 = v216;
                  v59 = v219;
                }

                v53[-2] = v56;
                v53[-1] = v59;
                ++v52;
                *v53 = v58;
                v53[1] = v57;
                v53 += 4;
                v54 += 4;
                --v45;
              }

              while (v45);
              goto LABEL_72;
            }
          }

          else if (v41 != v235)
          {
            v120 = v235 - v41;
            v121 = &v51[4 * v41];
            v122 = &v49[64 * v41 + 32];
            v123 = &v50[64 * v41 + 32];
            v55 = v196;
            do
            {
              v129 = *(v123 - 2);
              v128 = *(v123 - 1);
              v130 = *v123;
              v131 = *(v123 + 1);
              v202 = *v121;
              v211 = *v122;
              v214 = v122[1];
              v205 = v122[-2];
              v208 = v122[-1];
              v267[0] = 0uLL;
              v266 = 0uLL;
              v265.i32[2] = 0;
              v265.i64[0] = 0;
              v264.i32[2] = 0;
              v264.i64[0] = 0;
              v263.i32[2] = 0;
              v263.i64[0] = 0;
              v262.i32[2] = 0;
              v262.i64[0] = 0;
              v224 = v128;
              v232 = v129;
              v217 = v130;
              v238 = v131;
              v132 = sub_1AF120324(v267, &v265, &v263, v129, v128, v130, v131);
              v133 = sub_1AF120324(&v266, &v264, &v262, v205, v208, v211, v214);
              if (v132)
              {
                v124 = v232;
                v125 = v238;
                v126 = v217;
                v127 = v224;
                if (v133)
                {
                  v134 = vmulq_f32(v267[0], v266);
                  v233 = v266;
                  v239 = v267[0];
                  v135 = 1.0;
                  if (vaddv_f32(vadd_f32(*v134.i8, *&vextq_s8(v134, v134, 8uLL))) >= 0.0)
                  {
                    v155 = vsubq_f32(v267[0], v266);
                    v156 = vmulq_f32(v155, v155);
                    v157 = vaddq_f32(v267[0], v266);
                    v158 = vmulq_f32(v157, v157);
                    v159 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v156.i8, *&vextq_s8(v156, v156, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v158.i8, *&vextq_s8(v158, v158, 8uLL)))));
                    v160 = v159 + v159;
                    v161 = 1.0;
                    if ((v159 + v159) != 0.0)
                    {
                      v161 = sinf(v159 + v159) / v160;
                    }

                    v143 = v202;
                    v162 = (1.0 - v202) * v160;
                    if (v162 != 0.0)
                    {
                      v227 = v161;
                      v163 = sinf((1.0 - v202) * v160);
                      v161 = v227;
                      v143 = v202;
                      v135 = v163 / v162;
                    }

                    v164 = v143 * v160;
                    v165 = 1.0;
                    if (v164 != 0.0)
                    {
                      v228 = v161;
                      v166 = sinf(v164);
                      v161 = v228;
                      v143 = v202;
                      v165 = v166 / v164;
                    }

                    v167 = v161;
                    v168 = vrecpe_f32(LODWORD(v161));
                    v169 = vmul_f32(v168, vrecps_f32(LODWORD(v167), v168));
                    v170 = vmul_f32(v169, vrecps_f32(LODWORD(v167), v169)).f32[0];
                    v169.f32[0] = (1.0 - v202) * (v170 * v135);
                    v153 = vdupq_lane_s32(v169, 0);
                    v154 = vmulq_n_f32(v233, v143 * (v170 * v165));
                  }

                  else
                  {
                    v136 = vaddq_f32(v267[0], v266);
                    v137 = vmulq_f32(v136, v136);
                    v138 = vsubq_f32(v267[0], v266);
                    v139 = vmulq_f32(v138, v138);
                    v140 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v137.i8, *&vextq_s8(v137, v137, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v139.i8, *&vextq_s8(v139, v139, 8uLL)))));
                    v141 = v140 + v140;
                    v142 = 1.0;
                    if ((v140 + v140) != 0.0)
                    {
                      v142 = sinf(v140 + v140) / v141;
                    }

                    v143 = v202;
                    v144 = (1.0 - v202) * v141;
                    if (v144 != 0.0)
                    {
                      v225 = v142;
                      v145 = sinf((1.0 - v202) * v141);
                      v142 = v225;
                      v143 = v202;
                      v135 = v145 / v144;
                    }

                    v146 = v143 * v141;
                    v147 = 1.0;
                    if (v146 != 0.0)
                    {
                      v226 = v142;
                      v148 = sinf(v146);
                      v142 = v226;
                      v143 = v202;
                      v147 = v148 / v146;
                    }

                    v149 = v142;
                    v150 = vrecpe_f32(LODWORD(v142));
                    v151 = vmul_f32(v150, vrecps_f32(LODWORD(v149), v150));
                    v152 = vmul_f32(v151, vrecps_f32(LODWORD(v149), v151)).f32[0];
                    v151.f32[0] = (1.0 - v202) * (v152 * v135);
                    v153 = vdupq_lane_s32(v151, 0);
                    v154 = vmulq_n_f32(vnegq_f32(v233), v143 * (v152 * v147));
                  }

                  v171 = vmlaq_f32(v154, v239, v153);
                  v172 = vmulq_f32(v171, v171);
                  *v172.i8 = vadd_f32(*v172.i8, *&vextq_s8(v172, v172, 8uLL));
                  v173 = vdupq_lane_s32(vadd_f32(*v172.i8, vdup_lane_s32(*v172.i8, 1)), 0);
                  v174 = vrsqrteq_f32(v173);
                  v175 = vmulq_f32(v174, vrsqrtsq_f32(v173, vmulq_f32(v174, v174)));
                  v176 = vbslq_s8(vceqzq_f32(v173), v171, vmulq_f32(vmulq_f32(v175, vrsqrtsq_f32(v173, vmulq_f32(v175, v175))), v171));
                  v125 = vmlaq_n_f32(v265, vsubq_f32(v264, v265), v143);
                  v125.i32[3] = 1.0;
                  v177 = vmlaq_n_f32(v263, vsubq_f32(v262, v263), v143);
                  v178 = vabsq_f32(v177);
                  v178.i32[3] = 0;
                  v179.i64[0] = 0x8000000080000000;
                  v179.i64[1] = 0x8000000080000000;
                  v180 = vorrq_s8(vandq_s8(v177, v179), vabsq_f32(vmaxnmq_f32(v178, xmmword_1AFE20A30)));
                  v181 = vmulq_f32(v176, v176);
                  v182 = vmulq_laneq_f32(v176, v176, 3);
                  v183 = vmuls_lane_f32(v176.f32[0], *v176.f32, 1);
                  v184 = vmuls_lane_f32(v176.f32[1], v176, 2);
                  v176.f32[0] = vmuls_lane_f32(v176.f32[0], v176, 2);
                  v185 = vaddq_f32(v180, v180);
                  v186.i32[3] = 0;
                  v186.f32[0] = (0.5 - v181.f32[1]) - v181.f32[2];
                  v186.f32[1] = v183 + v182.f32[2];
                  v186.f32[2] = v176.f32[0] - v182.f32[1];
                  v124 = vmulq_n_f32(v186, v185.f32[0]);
                  v181.f32[0] = 0.5 - v181.f32[0];
                  v187.i32[3] = 0;
                  v187.f32[0] = v183 - v182.f32[2];
                  v187.f32[1] = v181.f32[0] - v181.f32[2];
                  v187.f32[2] = v184 + v182.f32[0];
                  v127 = vmulq_lane_f32(v187, *v185.f32, 1);
                  v182.f32[0] = v184 - v182.f32[0];
                  v188.i32[3] = 0;
                  v188.f32[0] = v176.f32[0] + v182.f32[1];
                  v188.i32[1] = v182.i32[0];
                  v188.f32[2] = v181.f32[0] - v181.f32[1];
                  v126 = vmulq_laneq_f32(v188, v185, 2);
                }
              }

              else
              {
                v124 = v232;
                v125 = v238;
                v126 = v217;
                v127 = v224;
              }

              v122[-2] = v124;
              v122[-1] = v127;
              ++v121;
              *v122 = v126;
              v122[1] = v125;
              v122 += 4;
              v123 += 64;
              --v120;
            }

            while (v120);
            goto LABEL_72;
          }

          v55 = v196;
LABEL_72:
          v2 = v199;
          sub_1AF630994(v38, &v252, v255);
          sub_1AF62D29C(v197);
          ecs_stack_allocator_pop_snapshot(v198);
          v39 = v190;
          if (v190)
          {
            os_unfair_lock_unlock(*(v197 + 344));
            os_unfair_lock_unlock(*(v197 + 376));
          }

          v37 = v55 + 1;
        }

        while (v37 != v194);
      }
    }

    sub_1AFBEDFA0(v245, sub_1AF5C3C90);
  }
}

uint64_t sub_1AFBEDFA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFBEE000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1ED723E48)
  {
    v4 = type metadata accessor for Query1(0, &type metadata for SmoothMotion, &off_1F25697A8, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1ED723E48);
    }
  }
}

unint64_t sub_1AFBEE058()
{
  result = qword_1EB643528;
  if (!qword_1EB643528)
  {
    result = swift_getWitnessTable(byte_1AFEA5914, &type metadata for SmoothMotion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643528);
  }

  return result;
}

void sub_1AFBEE0AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFBEE058();
    v7 = a3(a1, &type metadata for SmoothMotion.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFBEE124()
{
  result = qword_1EB643538;
  if (!qword_1EB643538)
  {
    result = swift_getWitnessTable(a5_3, &type metadata for SmoothMotion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643538);
  }

  return result;
}

unint64_t sub_1AFBEE17C()
{
  result = qword_1EB643540;
  if (!qword_1EB643540)
  {
    result = swift_getWitnessTable(byte_1AFEA585C, &type metadata for SmoothMotion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643540);
  }

  return result;
}

unint64_t sub_1AFBEE1D4()
{
  result = qword_1EB643548;
  if (!qword_1EB643548)
  {
    result = swift_getWitnessTable(byte_1AFEA5884, &type metadata for SmoothMotion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB643548);
  }

  return result;
}

uint64_t sub_1AFBEE228()
{
  type metadata accessor for TypeRegistry();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = sub_1AF42EBA8(MEMORY[0x1E69E7CC0]);
  v0[3] = sub_1AF42EBA8(v1);
  v0[4] = sub_1AF42ECC4(v1);
  sub_1AFBEE2B0();
  qword_1ED730448 = v0;

  qword_1ED730458 = v0;
  return result;
}

uint64_t sub_1AFBEE2B0()
{
  sub_1AFBF1614();
  v0 = sub_1AFDFCF88();
  v2 = sub_1AF6DC144(v0, v1, 0, 1);

  if (!v2 || (result = swift_conformsToProtocol2()) == 0)
  {
    sub_1AF6FB758();
    sub_1AF6FB7D8();
    sub_1AFBEF608();
    sub_1AF6DBCAC(&type metadata for OldEvent, &unk_1F24F5380);
    sub_1AF966FFC(&unk_1F24F53A0);
    v4 = MEMORY[0x1E69E7CC0];
    sub_1AF6DBCAC(&type metadata for NewEvent, MEMORY[0x1E69E7CC0]);
    sub_1AF6DBCAC(&type metadata for NullEntityComponent, v4);
    sub_1AF6DBCAC(&type metadata for Name, v4);
    sub_1AF6DBCAC(&type metadata for SetActive, v4);
    sub_1AF6DBCAC(&type metadata for Skybox, v4);
    sub_1AF6DBCAC(&type metadata for Navigation, v4);
    sub_1AF6DBCAC(&type metadata for ParticleContinuousSpawn, v4);
    sub_1AF6DBCAC(&type metadata for ParticleVariableSpawn, v4);
    sub_1AF6DBCAC(&type metadata for ParticleBurstSpawn, v4);
    sub_1AF6DBCAC(&type metadata for ParticlePeriodicBurstSpawn, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSpawnOverDistance, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSubSpawn, v4);
    sub_1AF6DBCAC(&type metadata for ParticleGrowEmitter, v4);
    sub_1AF6DBCAC(&type metadata for EmitterShape, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSizeInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAngleInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleLifeInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleMassInit, v4);
    sub_1AFBF16C4(0, &qword_1ED72FD18, &type metadata for LinearFactor, &off_1F252DE68, type metadata accessor for ParticleFloat3Init);
    sub_1AF6DBCAC(v5, v4);
    sub_1AFBF16C4(0, &qword_1ED72FD10, &type metadata for AngularFactor, &off_1F252DDC8, type metadata accessor for ParticleFloat3Init);
    sub_1AF6DBCAC(v6, v4);
    sub_1AFBF16C4(0, qword_1ED72FD20, &type metadata for ParticleTarget, &off_1F252DD28, type metadata accessor for ParticleFloat3Init);
    sub_1AF6DBCAC(v7, &unk_1F24F53B8);
    sub_1AF966FFC(&unk_1F24F53D8);
    sub_1AF6DBCAC(&type metadata for ParticleVelocityInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAngularVelocityInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleOrientationInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAngleVelocityInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleColorInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticlePivotInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleTextureFrameInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticlePositionOverTexture, v4);
    sub_1AF6DBCAC(&type metadata for ParticleColorOverPosition, v4);
    sub_1AF6DBCAC(&type metadata for ParticleColorOverLife, v4);
    sub_1AF6DBCAC(&type metadata for ParticleColorOverVelocity, v4);
    sub_1AF6DBCAC(&type metadata for ParticleColorOverTexture, v4);
    sub_1AF6DBCAC(&type metadata for ParticleOpacityEvolution, v4);
    sub_1AF6DBCAC(&type metadata for ParticleOpacityOverLife, v4);
    sub_1AF6DBCAC(&type metadata for ParticleOpacityOverVelocity, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSizeOverLife, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSizeOverVelocity, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSizeOverTexture, v4);
    sub_1AF6DBCAC(&type metadata for OrientationConstraint, v4);
    sub_1AF6DBCAC(&type metadata for OrientationOverVelocity, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAngleEvolution, v4);
    sub_1AF6DBCAC(&type metadata for ParticleTextureFrameEvolution, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAffectedByGravity, v4);
    sub_1AF6DBCAC(&type metadata for ParticleGravityForce, v4);
    sub_1AF6DBCAC(&type metadata for ParticleForce, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSPHSimulation, v4);
    sub_1AF6DBCAC(&type metadata for Anchored, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAnchored, v4);
    sub_1AF6DBCAC(&type metadata for ParticleRibbonTrails, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFlockingAlignOrientation, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFlockingAlignVelocityOnPlane, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFlockingConstrainToArea, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFlockingConstrainToPlane, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFlockingFlyTowardsArea, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFlockingSolver, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFlockingSpeedControl, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAffectedByGlobalFluidSolver2DEmitter, v4);
    sub_1AF6DBCAC(&type metadata for ParticleGlobalFluidSolver2DEmitter, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFluidSolver2DEmitter, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAffectedByGlobalFluidSolver2DSolver, v4);
    sub_1AF6DBCAC(&type metadata for ParticleGlobalFluidSolver2DSolver, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFluidSolver2DSolver, v4);
    sub_1AF6DBCAC(&type metadata for ParticleDrag, v4);
    sub_1AF6DBCAC(&type metadata for ParticleCopyData, v4);
    sub_1AF6DBCAC(&type metadata for ParticleNoise, &unk_1F24F53F0);
    sub_1AF966FFC(&unk_1F24F5410);
    sub_1AF6DBCAC(&type metadata for ProjectorParameters, v4);
    sub_1AF6DBCAC(&type metadata for ParticleCollide, v4);
    sub_1AF6DBCAC(&type metadata for ParticlePlaneCollider, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSphereCollider, v4);
    sub_1AF6DBCAC(&type metadata for ParticleBoxCollider, v4);
    sub_1AF6DBCAC(&type metadata for ParticleCylinderCollider, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSDFCollider, v4);
    sub_1AF6DBCAC(&type metadata for ParticleMeshCollider, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSphereAttractor, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSDFAttractor, v4);
    sub_1AF6DBCAC(&type metadata for KillShape, v4);
    sub_1AF6DBCAC(&type metadata for ParticleKillable, v4);
    sub_1AF6DBCAC(&type metadata for ForceField, v4);
    sub_1AF6DBCAC(&type metadata for ParticleForceField, v4);
    sub_1AF6DBCAC(&type metadata for ParticleGlobalForce, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAffectedByGlobalForce, v4);
    sub_1AF6DBCAC(&type metadata for Vortex, v4);
    sub_1AF6DBCAC(&type metadata for ParticleTargetFromPosition, v4);
    sub_1AF6DBCAC(&type metadata for DistanceConstraint, v4);
    sub_1AF6DBCAC(&type metadata for Attach, v4);
    sub_1AF6DBCAC(&type metadata for ParticleLocalBoxCollider, v4);
    sub_1AF6DBCAC(&type metadata for ParticlePointRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleLineRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleQuadRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleBoxRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSphereRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSurfaceRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleVolumetricRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticlePrimitiveRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAOSphereRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAOBoxRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleGaussianRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleDecalRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleVoxelRenderer, v4);
    sub_1AF6DBCAC(&type metadata for FluidRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleMeshRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleRibbonRenderer, v4);
    sub_1AF6DBCAC(&type metadata for MeshModel, &unk_1F24F5428);
    sub_1AF966FFC(&unk_1F24F5448);
    sub_1AF6DBCAC(&type metadata for ModelRenderer, v4);
    sub_1AF6DBCAC(&type metadata for GenericLOD, v4);
    sub_1AF6DBCAC(&type metadata for LODRenderer, v4);
    sub_1AF6DBCAC(&type metadata for LODState, v4);
    sub_1AF6DBCAC(&type metadata for PointOfCulling, v4);
    sub_1AF6DBCAC(&type metadata for FrustumCulled, v4);
    sub_1AF6DBCAC(&type metadata for LODCulled, v4);
    sub_1AF6DBCAC(&type metadata for ParticleLegacyRenderer, v4);
    sub_1AF6DBCAC(&type metadata for Color, v4);
    sub_1AF6DBCAC(&type metadata for DirectionalLight, v4);
    sub_1AF6DBCAC(&type metadata for PointLight, v4);
    sub_1AF6DBCAC(&type metadata for AmbientLight, v4);
    sub_1AF6DBCAC(&type metadata for SpotLight, v4);
    sub_1AF6DBCAC(&type metadata for Shadow, &unk_1F24F5460);
    sub_1AF966FFC(&unk_1F24F5480);
    sub_1AF6DBCAC(&type metadata for ParticleRoughness, v4);
    sub_1AF6DBCAC(&type metadata for ParticleMetalness, v4);
    sub_1AF6DBCAC(&type metadata for ParticleEmission, v4);
    sub_1AF6DBCAC(&type metadata for ParticleTarget, &unk_1F24F5498);
    sub_1AF966FFC(&unk_1F24F54B8);
    sub_1AF6DBCAC(&type metadata for UserData1, v4);
    sub_1AF6DBCAC(&type metadata for UserData2, v4);
    sub_1AF6DBCAC(&type metadata for UserData3, v4);
    sub_1AF6DBCAC(&type metadata for UserData4, v4);
    sub_1AF6DBCAC(&type metadata for NeighborCount, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAngle, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAngleVelocity, v4);
    sub_1AF6DBCAC(&type metadata for ParticleTextureFrame, v4);
    sub_1AF6DBCAC(&type metadata for Mass, v4);
    sub_1AF6DBCAC(&type metadata for ParticleID, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAge, v4);
    sub_1AF6DBCAC(&type metadata for ParticleLifetime, v4);
    sub_1AF6DBCAC(&type metadata for ParticlePivot, v4);
    sub_1AF6DBCAC(&type metadata for ParticleCustomEmitter, v4);
    sub_1AF6DBCAC(&type metadata for LocalAABB, v4);
    sub_1AF6DBCAC(&type metadata for WorldAABB, v4);
    sub_1AF6DBCAC(&type metadata for IBLGenerator, v4);
    sub_1AF6DBCAC(&type metadata for IBLRuntime, v4);
    sub_1AF6DBCAC(&type metadata for PointOfView, v4);
    sub_1AF6DBCAC(&type metadata for ProjectionMatrix, v4);
    sub_1AF6DBCAC(&type metadata for PerspectiveCamera, v4);
    sub_1AF6DBCAC(&type metadata for OrthographicCamera, v4);
    sub_1AF6DBCAC(&type metadata for CameraDepthOfField, v4);
    sub_1AF6DBCAC(&type metadata for CameraLensBlur, v4);
    sub_1AF6DBCAC(&type metadata for CameraBloom, v4);
    sub_1AF6DBCAC(&type metadata for CameraVignetting, v4);
    sub_1AF6DBCAC(&type metadata for CameraColorGrading, v4);
    sub_1AF6DBCAC(&type metadata for CameraToneMapping, v4);
    v8 = type metadata accessor for SDFFileAsset(0);
    sub_1AF6DBCAC(v8, v4);
    sub_1AF6DBCAC(&type metadata for SDFRuntimeData, v4);
    sub_1AF6DBCAC(&type metadata for SDFTextureGenerator, v4);
    sub_1AF6DBCAC(&type metadata for RenderSettings, v4);
    sub_1AF6DBCAC(&type metadata for SceneFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for MeshFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for MeshReferenceAsset, v4);
    sub_1AF6DBCAC(&type metadata for MeshImportOptions, v4);
    sub_1AF6DBCAC(&type metadata for TextureSource, v4);
    sub_1AF6DBCAC(&type metadata for TextureFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for UnmanagedFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for CSVFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for HeaderFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for MovieFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for TextureArrayFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for TextureClient, v4);
    sub_1AF6DBCAC(&type metadata for TextureNamedAsset, v4);
    sub_1AF6DBCAC(&type metadata for TextureShaderAsset, v4);
    sub_1AF6DBCAC(&type metadata for TextureLoadingOptions, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireMipmap, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireMipmapGeneration, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireCubemap, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireNonSRGB, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireUnpremultiply, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequirePremultiplyWithLinearAlpha, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireSizeLimit, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireAnimationRepresentation, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireCPURepresentation, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireGPURepresentation, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireMask, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireIOSurface, v4);
    sub_1AF6DBCAC(&type metadata for TextureLoadPolicy, v4);
    sub_1AF6DBCAC(&type metadata for TextureGPURepresentationDoNotDownload, v4);
    sub_1AF6DBCAC(&type metadata for TextureGPURepresentationDoNotUpload, v4);
    sub_1AF6DBCAC(&type metadata for TextureFileData, v4);
    sub_1AF6DBCAC(&type metadata for CALayerFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for RenderGraphTextureTarget, v4);
    sub_1AF6DBCAC(&type metadata for TexturePlaceholder, v4);
    sub_1AF6DBCAC(&type metadata for TextToImageGenerator, v4);
    sub_1AF6DBCAC(&type metadata for AudioFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for AudioAnalyzer, v4);
    sub_1AF6DBCAC(&type metadata for AudioController, v4);
    sub_1AF6DBCAC(&type metadata for AudioSpectrum, v4);
    sub_1AF6DBCAC(&type metadata for Parent, v4);
    sub_1AF6DBCAC(&type metadata for Children, v4);
    sub_1AF6DBCAC(&type metadata for Hidden, v4);
    sub_1AF6DBCAC(&type metadata for HiddenOrHasHiddenAncestor, v4);
    sub_1AF6DBCAC(&type metadata for WorldTransform, v4);
    sub_1AF6DBCAC(&type metadata for InverseWorldTransform, v4);
    sub_1AF6DBCAC(&type metadata for NotInHierarchy, v4);
    sub_1AF6DBCAC(&type metadata for ParentedToScene, v4);
    sub_1AF6DBCAC(&type metadata for SpaceOverride, v4);
    sub_1AF6DBCAC(&type metadata for LastFrameWorldTransform, v4);
    sub_1AF6DBCAC(&type metadata for Static, v4);
    sub_1AF6DBCAC(&type metadata for Fixed, v4);
    sub_1AF6DBCAC(&type metadata for Beamed, v4);
    sub_1AF6DBCAC(&type metadata for RotateAction, v4);
    sub_1AF6DBCAC(&type metadata for SineMoveAction, v4);
    sub_1AF6DBCAC(&type metadata for SineYAction, v4);
    sub_1AF6DBCAC(&type metadata for Scale1, v4);
    sub_1AF6DBCAC(&type metadata for Scale2, v4);
    sub_1AF6DBCAC(&type metadata for Scale3, &unk_1F24F54D0);
    sub_1AF966FFC(&unk_1F24F54F0);
    v9 = type metadata accessor for VFXObjectTag(0);
    sub_1AF6DBCAC(v9, v4);
    sub_1AF6DBCAC(&type metadata for VFXTag, v4);
    sub_1AF6DBCAC(&type metadata for VFXAssetTag, v4);
    sub_1AF6DBCAC(&type metadata for VFXBridgeTag, v4);
    sub_1AF6DBCAC(&type metadata for VFXParentAsset, v4);
    sub_1AF6DBCAC(&type metadata for Prefab, v4);
    sub_1AF6DBCAC(&type metadata for EmbeddedAssets, v4);
    sub_1AF6DBCAC(&type metadata for Seed, v4);
    sub_1AF6DBCAC(&type metadata for EmitterDescription, v4);
    sub_1AF6DBCAC(&type metadata for EmitterRuntime, v4);
    sub_1AF6DBCAC(&type metadata for DebugSelectedCamera, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSpawnDelay, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSpawnDuration, v4);
    sub_1AF6DBCAC(&type metadata for ParticleRespawn, v4);
    sub_1AF6DBCAC(&type metadata for Shadow, v4);
    sub_1AF6DBCAC(&type metadata for LookAt, v4);
    sub_1AF6DBCAC(&type metadata for SmoothMotion, v4);
    sub_1AF6DBCAC(&type metadata for RenderingOrder, v4);
    sub_1AF6DBCAC(&type metadata for ProjectorParameters, v4);
    sub_1AF6DBCAC(&type metadata for ParticleCollisionEvent, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSpawnID, v4);
    sub_1AF6DBCAC(&type metadata for GrowEmitterRuntime, v4);
    sub_1AF6DBCAC(&type metadata for ClampBox, v4);
    sub_1AF6DBCAC(&type metadata for CodeGenerationComponent, v4);
    sub_1AF6DBCAC(&type metadata for CodeGenerationInitialized, v4);
    sub_1AF6DBCAC(&type metadata for GraphEntityComponentPropertyReferences, v4);
    sub_1AF6DBCAC(&type metadata for GraphScriptingConfig, v4);
    sub_1AF6DBCAC(&type metadata for GraphScriptGroup, v4);
    sub_1AF6DBCAC(&type metadata for GraphV1ExecutionOverride, v4);
    sub_1AF6DBCAC(&type metadata for GraphComponent, v4);
    sub_1AF6DBCAC(&type metadata for GraphSideStorage, v4);
    sub_1AF6DBCAC(&type metadata for Bindings, v4);
    sub_1AF6DBCAC(&type metadata for ColorRampComponent, v4);
    sub_1AF6DBCAC(&type metadata for CurveComponent, v4);
    sub_1AF6DBCAC(&type metadata for WrapAroundCamera, v4);
    sub_1AF6DBCAC(&type metadata for Position, v4);
    sub_1AF6DBCAC(&type metadata for Normal, v4);
    sub_1AF6DBCAC(&type metadata for Velocity, v4);
    sub_1AF6DBCAC(&type metadata for AngularVelocity, v4);
    sub_1AF6DBCAC(&type metadata for Orientation, v4);
    sub_1AF6DBCAC(&type metadata for SubEntity, &unk_1F24F5508);
    sub_1AF966FFC(&unk_1F24F5528);
    sub_1AF6DBCAC(&type metadata for ParticleSetID, v4);
    sub_1AF6DBCAC(&type metadata for PropagateDirtiness, v4);
    sub_1AF6DBCAC(&type metadata for PrimitiveGenerator, v4);
    v10 = type metadata accessor for SceneKitAsset(0);
    sub_1AF6DBCAC(v10, v4);
    sub_1AF6DBCAC(&type metadata for SceneKitAssetInstance, v4);
    sub_1AF6DBCAC(&type metadata for ShaderFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for VideoCapture, v4);
    sub_1AF6DBCAC(&type metadata for PointCacheFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for PointCacheFromModel, v4);
    sub_1AF6DBCAC(&type metadata for PointCacheGenerator, v4);
    sub_1AF6DBCAC(&type metadata for PointCacheEmitter, v4);
    sub_1AF6DBCAC(&type metadata for PointCacheSpawner, v4);
    sub_1AF6DBCAC(&type metadata for REMeshAssetPointCache, v4);
    sub_1AF6DBCAC(&type metadata for Material, &unk_1F24F5540);
    sub_1AF966FFC(&unk_1F24F5560);
    sub_1AF6DBCAC(&type metadata for MaterialParameters, v4);
    sub_1AF6DBCAC(&type metadata for AnimationTimeSource, v4);
    sub_1AFBF16C4(0, qword_1ED72FDC8, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for KeyframeAnimation);
    sub_1AF6DBCAC(v11, v4);
    sub_1AF71970C(0);
    sub_1AF6DBCAC(v12, v4);
    sub_1AF63A530(0);
    sub_1AF6DBCAC(v13, v4);
    sub_1AF63A63C(0);
    sub_1AF6DBCAC(v14, v4);
    sub_1AF6DBCAC(&type metadata for Authoring, v4);
    sub_1AF6DBCAC(&type metadata for DoNotExport, v4);
    sub_1AF6DBCAC(&type metadata for Scheduling, v4);
    sub_1AF6DBCAC(&type metadata for NeighborGrid, v4);
    sub_1AF6DBCAC(&type metadata for IsSubEntityOf, v4);
    sub_1AFBEF948();
    sub_1AF6DBCAC(&type metadata for ParticleClassSpawnID, v4);
    sub_1AFBEFA50();
    return sub_1AFBEFBB0();
  }

  return result;
}

uint64_t sub_1AFBEF608()
{
  v0 = sub_1AF0D4478(0, &qword_1ED72E0A8, &off_1E7A77C00);
  v1 = MEMORY[0x1E69E7CC0];
  sub_1AF6DBCAC(v0, MEMORY[0x1E69E7CC0]);
  v2 = sub_1AF0D4478(0, &qword_1ED7307E8, &off_1E7A77C98);
  sub_1AF6DBCAC(v2, v1);
  v3 = sub_1AF0D4478(0, &qword_1ED72F7F0, &off_1E7A77B60);
  sub_1AF6DBCAC(v3, v1);
  v4 = sub_1AF0D4478(0, &qword_1ED72F7E8, &off_1E7A779D0);
  sub_1AF6DBCAC(v4, v1);
  v5 = sub_1AF0D4478(0, &qword_1ED72F868, &off_1E7A779E8);
  sub_1AF6DBCAC(v5, v1);
  v6 = sub_1AF0D4478(0, &qword_1ED72F818, &off_1E7A77A08);
  sub_1AF6DBCAC(v6, v1);
  v7 = sub_1AF0D4478(0, &qword_1ED72F860, &off_1E7A77A20);
  sub_1AF6DBCAC(v7, v1);
  v8 = sub_1AF0D4478(0, &qword_1ED72F828, &off_1E7A77A38);
  sub_1AF6DBCAC(v8, v1);
  v9 = sub_1AF0D4478(0, &qword_1ED72F820, &off_1E7A77A00);
  sub_1AF6DBCAC(v9, v1);
  v10 = sub_1AF0D4478(0, &qword_1ED72F830, &off_1E7A779F8);
  sub_1AF6DBCAC(v10, v1);
  v11 = sub_1AF0D4478(0, &qword_1ED72F840, &off_1E7A77A30);
  sub_1AF6DBCAC(v11, v1);
  v12 = sub_1AF0D4478(0, &qword_1ED72F858, &off_1E7A77A18);
  sub_1AF6DBCAC(v12, v1);
  v13 = sub_1AF0D4478(0, &qword_1ED72F838, &off_1E7A77A40);
  sub_1AF6DBCAC(v13, v1);
  v14 = sub_1AF0D4478(0, &qword_1ED72F850, &off_1E7A77A28);
  sub_1AF6DBCAC(v14, v1);
  v15 = sub_1AF0D4478(0, &unk_1ED72F7F8, &off_1E7A779F0);
  sub_1AF6DBCAC(v15, v1);
  v16 = sub_1AF0D4478(0, &qword_1ED72F810, &off_1E7A77A10);
  sub_1AF6DBCAC(v16, v1);
  type metadata accessor for VFXCameraToneMappingMode(0);
  sub_1AF6DBCAC(v17, v1);
  v18 = sub_1AF0D4478(0, &qword_1ED72E058, &off_1E7A77AE0);
  sub_1AF6DBCAC(v18, v1);
  v19 = sub_1AF0D4478(0, &qword_1ED72E0A0, &off_1E7A77AA0);
  sub_1AF6DBCAC(v19, v1);
  v20 = sub_1AF0D4478(0, &qword_1ED72E098, &off_1E7A77B88);
  sub_1AF6DBCAC(v20, v1);
  v21 = sub_1AF0D4478(0, &qword_1ED72E050, &off_1E7A77B30);
  sub_1AF6DBCAC(v21, v1);
  v22 = sub_1AF0D4478(0, &unk_1ED72E060, &off_1E7A77C58);
  sub_1AF6DBCAC(v22, v1);
  v23 = sub_1AF0D4478(0, &unk_1ED72E080, &off_1E7A77B68);
  sub_1AF6DBCAC(v23, v1);
  v24 = sub_1AF0D4478(0, &qword_1ED72E0B0, &off_1E7A77B00);
  sub_1AF6DBCAC(v24, v1);
  v25 = sub_1AF0D4478(0, &qword_1ED72E078, &off_1E7A77B08);

  return sub_1AF6DBCAC(v25, v1);
}

uint64_t sub_1AFBEF948()
{
  v0 = MEMORY[0x1E69E7CC0];
  sub_1AF6DBCAC(&type metadata for ScriptsHolder, MEMORY[0x1E69E7CC0]);
  v1 = type metadata accessor for EmitterScript(0);
  sub_1AF6DBCAC(v1, v0);
  updated = type metadata accessor for ParticleUpdateScript(0);
  sub_1AF6DBCAC(updated, &unk_1F24F52D8);
  sub_1AF966FFC(&unk_1F24F52F8);
  inited = type metadata accessor for ParticleInitScript(0);
  sub_1AF6DBCAC(inited, &unk_1F24F5310);
  sub_1AF966FFC(&unk_1F24F5330);
  v4 = type metadata accessor for GraphScript(0);
  sub_1AF6DBCAC(v4, v0);
  v5 = type metadata accessor for SimpleScript(0);
  sub_1AF6DBCAC(v5, v0);
  v6 = type metadata accessor for MetalFunctionScript(0);
  sub_1AF6DBCAC(v6, &unk_1F24F5348);
  sub_1AF966FFC(&unk_1F24F5368);
  v7 = type metadata accessor for ShaderScript(0);
  sub_1AF6DBCAC(v7, v0);
  v8 = type metadata accessor for TriggerScript(0);
  sub_1AF6DBCAC(v8, v0);
  v9 = type metadata accessor for HeaderScript(0);

  return sub_1AF6DBCAC(v9, v0);
}

uint64_t sub_1AFBEFA50()
{
  v0 = MEMORY[0x1E69E7CC0];
  sub_1AF6DBCAC(&type metadata for InputStream, MEMORY[0x1E69E7CC0]);
  sub_1AF6DBCAC(&type metadata for DefaultMaterialInstance, v0);
  sub_1AF6DBCAC(&type metadata for AssetManagerInstance, v0);
  sub_1AF6DBCAC(&type metadata for CurvesState, v0);
  sub_1AF6DBCAC(&type metadata for ColorRampsState, v0);
  sub_1AF6DBCAC(&type metadata for AssetCatalog, v0);
  sub_1AF6DBCAC(&type metadata for EffectsRegistry, v0);
  sub_1AF6DBCAC(&type metadata for DiagnosticsTrackerInstance, v0);
  sub_1AF6DBCAC(&type metadata for SceneAssetRegistryInstance, v0);
  sub_1AF6DBCAC(&type metadata for SceneWorldAABB, v0);
  sub_1AF6DBCAC(&type metadata for kClusterState, v0);
  sub_1AF6DBCAC(&_s21DrawCallEntityClassesVN, v0);
  sub_1AF6DBCAC(&type metadata for NoiseGlobalTexture, v0);
  sub_1AF6DBCAC(&type metadata for MeshRenderSystemState, v0);
  sub_1AF6DBCAC(&type metadata for FrameConstantsStorage, v0);
  v1 = type metadata accessor for ScriptingConfiguration(0);
  sub_1AF6DBCAC(v1, v0);
  sub_1AF6DBCAC(&type metadata for RERendererConfiguration, v0);
  sub_1AF6DBCAC(&type metadata for ShadowState, v0);

  return sub_1AF6DBCAC(&type metadata for LightsUniforms, v0);
}

uint64_t sub_1AFBEFBB0()
{
  v0 = MEMORY[0x1E69E7CC0];
  sub_1AF6DBCAC(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CC0]);
  sub_1AF6DBCAC(MEMORY[0x1E69E6370], v0);
  sub_1AF6DBCAC(MEMORY[0x1E69E7508], v0);
  sub_1AF6DBCAC(MEMORY[0x1E69E75F8], v0);
  v1 = MEMORY[0x1E69E7668];
  sub_1AF6DBCAC(MEMORY[0x1E69E7668], v0);
  sub_1AF6DBCAC(MEMORY[0x1E69E76D8], v0);
  v2 = MEMORY[0x1E69E6530];
  sub_1AF6DBCAC(MEMORY[0x1E69E6530], v0);
  sub_1AF6DBCAC(MEMORY[0x1E69E7230], v0);
  sub_1AF6DBCAC(MEMORY[0x1E69E72F0], v0);
  v3 = MEMORY[0x1E69E7360];
  sub_1AF6DBCAC(MEMORY[0x1E69E7360], v0);
  sub_1AF6DBCAC(MEMORY[0x1E69E63B0], v0);
  v4 = MEMORY[0x1E69E6448];
  sub_1AF6DBCAC(MEMORY[0x1E69E6448], v0);
  v5 = MEMORY[0x1E69E7428];
  sub_1AFBF165C(0, &unk_1ED72F770, sub_1AF43A0C8, v4, MEMORY[0x1E69E7428]);
  sub_1AF6DBCAC(v6, v0);
  v7 = MEMORY[0x1E69E7450];
  sub_1AFBF165C(0, &qword_1ED72F740, sub_1AF43A0C8, v4, MEMORY[0x1E69E7450]);
  sub_1AF6DBCAC(v8, v0);
  v9 = MEMORY[0x1E69E74A8];
  sub_1AFBF165C(0, &qword_1ED72F6E0, sub_1AF43A0C8, v4, MEMORY[0x1E69E74A8]);
  sub_1AF6DBCAC(v10, v0);
  type metadata accessor for simd_float2x2(0);
  sub_1AF6DBCAC(v11, v0);
  type metadata accessor for simd_float2x3(0);
  sub_1AF6DBCAC(v12, v0);
  type metadata accessor for simd_float2x4(0);
  sub_1AF6DBCAC(v13, v0);
  type metadata accessor for simd_float3x2(0);
  sub_1AF6DBCAC(v14, v0);
  type metadata accessor for simd_float3x3(0);
  sub_1AF6DBCAC(v15, v0);
  type metadata accessor for simd_float3x4(0);
  sub_1AF6DBCAC(v16, v0);
  type metadata accessor for simd_float4x2(0);
  sub_1AF6DBCAC(v17, v0);
  type metadata accessor for simd_float4x3(0);
  sub_1AF6DBCAC(v18, v0);
  type metadata accessor for simd_float4x4(0);
  sub_1AF6DBCAC(v19, v0);
  sub_1AFBF165C(0, &qword_1ED72F730, sub_1AF477BB4, v1, v7);
  sub_1AF6DBCAC(v20, v0);
  v21 = MEMORY[0x1E69E7290];
  sub_1AF6DBCAC(MEMORY[0x1E69E7290], v0);
  sub_1AFBF165C(0, &qword_1ED72F768, sub_1AF477AB8, v21, v5);
  sub_1AF6DBCAC(v22, v0);
  sub_1AFBF165C(0, &qword_1ED72F738, sub_1AF477AB8, v21, v7);
  sub_1AF6DBCAC(v23, v0);
  sub_1AFBF165C(0, &qword_1ED72F6D8, sub_1AF477AB8, v21, v9);
  sub_1AF6DBCAC(v24, v0);
  type metadata accessor for simd_quatf(0);
  sub_1AF6DBCAC(v25, v0);
  sub_1AF6DBCAC(MEMORY[0x1E69E6270], v0);
  v26 = MEMORY[0x1E69E66A8];
  sub_1AFBF16C4(0, &qword_1ED72F950, v2, MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  sub_1AF6DBCAC(v27, v0);
  sub_1AFBF16C4(0, &unk_1ED72F940, v3, MEMORY[0x1E69E7378], v26);
  sub_1AF6DBCAC(v28, v0);
  sub_1AFBF16C4(0, &qword_1ED72F958, v4, MEMORY[0x1E69E6468], v26);
  sub_1AF6DBCAC(v29, v0);
  type metadata accessor for TextureDescriptor(0);
  sub_1AF6DBCAC(v30, v0);
  sub_1AF6DBCAC(&type metadata for ColorRamp, v0);
  sub_1AFBF16C4(0, qword_1ED72F9E0, v4, &off_1F2532E98, type metadata accessor for Curve);
  sub_1AF6DBCAC(v31, v0);
  type metadata accessor for MTLPixelFormat(0);
  sub_1AF6DBCAC(v32, v0);
  type metadata accessor for MTLStorageMode(0);
  sub_1AF6DBCAC(v33, v0);
  sub_1AF6DBCAC(&type metadata for KernelReference, v0);
  sub_1AF6DBCAC(&type metadata for Entity, v0);
  sub_1AF6DBCAC(&type metadata for Material.Kind, v0);
  v34 = type metadata accessor for PBRParameters();
  sub_1AF6DBCAC(v34, v0);
  v35 = type metadata accessor for PrelitParameters();
  sub_1AF6DBCAC(v35, v0);
  v36 = type metadata accessor for CustomParameters();
  sub_1AF6DBCAC(v36, v0);
  sub_1AF6DBCAC(&type metadata for BlendMode, v0);
  sub_1AF6DBCAC(&type metadata for FilterMode, v0);
  sub_1AF6DBCAC(&type metadata for TextureMipFilterMode, v0);
  sub_1AF6DBCAC(&type metadata for AddressMode, v0);
  type metadata accessor for MTLCullMode(0);
  v38 = v37;
  sub_1AF6DBCAC(v37, v0);
  type metadata accessor for MTLCompareFunction(0);
  v40 = v39;
  sub_1AF6DBCAC(v39, v0);
  type metadata accessor for MTLWinding(0);
  sub_1AF6DBCAC(v41, v0);
  type metadata accessor for VFXForceFieldType(0);
  sub_1AF6DBCAC(v42, v0);
  sub_1AF6DBCAC(&type metadata for Composition.Operation, v0);
  sub_1AF6DBCAC(&type metadata for LensBlurQuality, v0);
  sub_1AF6DBCAC(&type metadata for PointCache.Distribution, v0);
  sub_1AF6DBCAC(&type metadata for FlockingSizeMode, v0);
  sub_1AF6DBCAC(&type metadata for TextureChannel, v0);
  sub_1AF6DBCAC(&type metadata for AddressMode, v0);
  sub_1AF6DBCAC(&type metadata for BlendMode, v0);
  type metadata accessor for VFXCameraProjectionDirection(0);
  sub_1AF6DBCAC(v43, v0);
  sub_1AF6DBCAC(&type metadata for ParticleSortMode, v0);
  sub_1AF6DBCAC(&type metadata for ParticleAnimationMode, v0);
  sub_1AF6DBCAC(&type metadata for Composition.Operation, v0);
  sub_1AF6DBCAC(&type metadata for ParticleColorOverPosition.GradientMode, v0);
  sub_1AF6DBCAC(&type metadata for ScaleMode, v0);
  sub_1AF6DBCAC(&type metadata for ParticleColorInit.Mode, v0);
  sub_1AF6DBCAC(&type metadata for Material.Kind, v0);
  sub_1AF6DBCAC(&type metadata for KillShape.Shape, v0);
  sub_1AF6DBCAC(&type metadata for ParticleQuadRenderer.Shape, v0);
  sub_1AF6DBCAC(&type metadata for ParticleOrientationMode, v0);
  sub_1AF6DBCAC(&type metadata for FluidSolver2DSolverSetupType, v0);
  sub_1AF6DBCAC(&type metadata for FluidSolver2DSolverBorderType, v0);
  sub_1AF6DBCAC(&type metadata for FlockingLocalAxis, v0);
  sub_1AF6DBCAC(&type metadata for ToneMappingOperator, v0);
  sub_1AF6DBCAC(&type metadata for MotionDistribution, v0);
  sub_1AF6DBCAC(&type metadata for EmitterDescription.PhysicsSimulation, v0);
  sub_1AF6DBCAC(&type metadata for NoiseKind, v0);
  sub_1AF6DBCAC(&type metadata for EmitterShape.Shape, v0);
  sub_1AF6DBCAC(&type metadata for ShapeDistribution, v0);
  sub_1AF6DBCAC(&type metadata for EmitterShape.Direction, v0);
  sub_1AF6DBCAC(&type metadata for EmissionOrder, v0);
  sub_1AF6DBCAC(&type metadata for ParticlePrimitiveRenderer.Shape, v0);
  sub_1AF6DBCAC(&type metadata for EasingFunction, v0);
  sub_1AF6DBCAC(&type metadata for FillMode, v0);
  sub_1AF6DBCAC(&type metadata for EvolutionMode, v0);
  sub_1AF6DBCAC(&type metadata for VideoCapture.OrientationMode, v0);
  sub_1AF6DBCAC(&type metadata for OrientationConstraint.Mode, v0);
  sub_1AF6DBCAC(&type metadata for ProjectionDirection, v0);
  sub_1AF6DBCAC(&type metadata for ParticleSubSpawn.Mode, v0);
  sub_1AF6DBCAC(&type metadata for EntitySpace, v0);
  type metadata accessor for VFXCameraFillMode(0);
  sub_1AF6DBCAC(v44, v0);
  sub_1AF6DBCAC(&type metadata for RandomMode, v0);
  sub_1AF6DBCAC(&type metadata for FilterEdgeMode, v0);
  sub_1AF6DBCAC(v38, v0);
  sub_1AF6DBCAC(v40, v0);
  sub_1AF6DBCAC(&type metadata for FilterMode, v0);
  sub_1AF6DBCAC(&type metadata for TextureMipFilterMode, v0);
  sub_1AF6DBCAC(&type metadata for PrimitiveGenerator.PrimitiveType, v0);
  sub_1AF6DBCAC(&type metadata for ParticleRibbonTextureMode, v0);
  sub_1AF6DBCAC(&type metadata for ParticleRibbonProfile, v0);
  sub_1AF6DBCAC(&type metadata for OrientationOverVelocity.DirectionAxis, v0);
  sub_1AF6DBCAC(&type metadata for VFXKeyCode, v0);
  sub_1AF6DBCAC(&type metadata for VFXHandTracker.HandChirality, v0);

  return sub_1AF6DBCAC(&type metadata for VFXHandTracker.Joint, v0);
}

void sub_1AFBF0428(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = type metadata accessor for EventDisposeSystem();
    sub_1AF6D78B4(v2, &off_1F25343C8, 1, 0);
    v3 = type metadata accessor for InputClearSystem();
    sub_1AF6D78B4(v3, &off_1F2534768, 1, 0);
    v4 = type metadata accessor for HiddenSystem();
    sub_1AF6D78B4(v4, &off_1F2569680, 1, 0);
    updated = type metadata accessor for PrepareUpdateSystem();
    sub_1AF6D78B4(updated, &off_1F255F358, 1, 0);
    v6 = type metadata accessor for RotateActionSystem();
    sub_1AF6D78B4(v6, &off_1F255EFB8, 1, 1);
    v7 = type metadata accessor for SineMoveSystem();
    sub_1AF6D78B4(v7, &off_1F255EF68, 1, 1);
    v8 = type metadata accessor for RenderGraphSystem();
    sub_1AF6D78B4(v8, &off_1F25690C0, 1, 0);
    v9 = type metadata accessor for RenderGraphSystemCleanup();
    sub_1AF6D78B4(v9, &off_1F2569110, 1, 0);
    if ((v1 & 0xC0000000) == 0)
    {
      v10 = type metadata accessor for PreUpdateCameraSystem();
      sub_1AF6D78B4(v10, &off_1F255F3A8, 1, 0);
      v11 = type metadata accessor for PreRenderCameraSystem();
      sub_1AF6D78B4(v11, &off_1F255F3A8, 1, 0);
    }

    v12 = type metadata accessor for AnimationComputeLocalTimeSystem();
    sub_1AF6D78B4(v12, &off_1F255F0A8, 1, 1);
    v13 = type metadata accessor for BasicAnimationSystem();
    sub_1AF6D78B4(v13, &off_1F255F058, 1, 1);
    v14 = type metadata accessor for KeyframeAnimationSystem();
    sub_1AF6D78B4(v14, &off_1F255F008, 1, 1);
    v15 = type metadata accessor for HierarchySystem();
    if ((v1 & 0x80000000) != 0)
    {
      v15 = type metadata accessor for SimplifiedHierarchySystem();
    }

    v16 = v15;
    sub_1AF6D78B4(v15, &off_1F2561870, 1, 0);
    v17 = type metadata accessor for SmoothMotionSystem();
    sub_1AF6D78B4(v17, &off_1F25697F8, 1, 1);
    sub_1AF6D80D8(v17, &off_1F25697F8, v16, &off_1F2561870);
    v18 = type metadata accessor for StaticToFixedSystem();
    sub_1AF6D78B4(v18, &off_1F25617D0, 1, 0);
    if ((v1 & 0x80000000) == 0)
    {
      FrameWorldTransformSystem_vfx1 = type metadata accessor for LastFrameWorldTransformSystem_vfx1();
      sub_1AF6D78B4(FrameWorldTransformSystem_vfx1, &off_1F2561820, 1, 1);
      sub_1AF6D80D8(v16, &off_1F2561870, FrameWorldTransformSystem_vfx1, &off_1F2561820);
    }

    v20 = type metadata accessor for SkeletonAnimationSystem();
    sub_1AF6D78B4(v20, &off_1F2543848, 1, 0);
    v21 = type metadata accessor for SkeletonSystem();
    sub_1AF6D78B4(v21, &off_1F25437F8, 1, 0);
    sub_1AF6D80D8(v21, &off_1F25437F8, v16, &off_1F2561870);
    v22 = type metadata accessor for SkinningSystem();
    sub_1AF6D78B4(v22, &off_1F25437A8, 1, 0);
    v23 = type metadata accessor for UpdateWorldAABBSystem();
    sub_1AF6D78B4(v23, &off_1F2569AD8, 1, 1);
    v24 = type metadata accessor for LODSystem();
    sub_1AF6D80D8(v23, &off_1F2569AD8, v24, &off_1F2562000);
    sub_1AF6D80D8(v23, &off_1F2569AD8, v16, &off_1F2561870);
    if ((v1 & 0x10000000000) == 0)
    {
LABEL_3:
      if ((v1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 0x10000000000) == 0)
  {
    goto LABEL_3;
  }

  v25 = type metadata accessor for GraphAuthoringSystem();
  sub_1AF6D78B4(v25, &off_1F253B608, 1, 0);
  v26 = type metadata accessor for ReplicationStreamSystem();
  sub_1AF6D78B4(v26, &off_1F2535E68, 1, 0);
  if ((v1 & 4) == 0)
  {
LABEL_4:
    if ((v1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  started = type metadata accessor for StartCaptureSystem();
  sub_1AF6D78B4(started, &off_1F2537050, 1, 0);
  v28 = type metadata accessor for StopCaptureSystem();
  sub_1AF6D78B4(v28, &off_1F2537000, 1, 0);
  if ((v1 & 8) == 0)
  {
LABEL_5:
    if ((v1 & 0x400) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

LABEL_16:
  v29 = type metadata accessor for ResourceUsageSystem();
  sub_1AF6D78B4(v29, &off_1F255F790, 1, 0);
  v30 = type metadata accessor for TextToImageGeneratorSystem();
  sub_1AF6D78B4(v30, &off_1F25308B8, 1, 0);
  v31 = type metadata accessor for MeshReferenceSystem();
  sub_1AF6D78B4(v31, &off_1F252BF58, 1, 0);
  v32 = type metadata accessor for ColorRampSystem();
  sub_1AF6D78B4(v32, &off_1F2541AF8, 1, 0);
  v111 = v1;
  v33 = type metadata accessor for GraphScriptRunner();
  sub_1AF6D80D8(v32, &off_1F2541AF8, v33, &off_1F255D1B0);
  v34 = type metadata accessor for CurveSystem();
  sub_1AF6D78B4(v34, &off_1F2541F18, 1, 0);
  sub_1AF6D80D8(v34, &off_1F2541F18, v33, &off_1F255D1B0);
  v35 = type metadata accessor for AssetCatalogSystem();
  sub_1AF6D78B4(v35, &off_1F2541588, 1, 0);
  v36 = type metadata accessor for TextureSystem();
  sub_1AF6D78B4(v36, &off_1F2544630, 1, 0);
  v37 = type metadata accessor for TextureClientPlaceholderSystem();
  sub_1AF6D78B4(v37, &off_1F2544540, 1, 0);
  sub_1AF6D80D8(v36, &off_1F2544630, v33, &off_1F255D1B0);
  sub_1AF6D80D8(v30, &off_1F25308B8, v33, &off_1F255D1B0);
  v38 = type metadata accessor for MovieSystem();
  sub_1AF6D78B4(v38, &off_1F256F0D8, 1, 0);
  v39 = type metadata accessor for AudioSystem();
  sub_1AF6D78B4(v39, &off_1F256F088, 1, 0);
  v40 = type metadata accessor for ShaderFileSystem();
  sub_1AF6D78B4(v40, off_1F2542F38, 1, 0);
  v41 = type metadata accessor for HeaderFileSystem();
  sub_1AF6D78B4(v41, &off_1F2542288, 1, 0);
  v42 = type metadata accessor for MaterialSystem();
  sub_1AF6D78B4(v42, &off_1F253F898, 1, 0);
  v43 = type metadata accessor for ScriptCompilerSystem();
  sub_1AF6D80D8(v42, &off_1F253F898, v43, &off_1F2559760);
  sub_1AF6D80D8(v42, &off_1F253F898, v33, &off_1F255D1B0);
  sub_1AF6D80D8(v42, &off_1F253F898, v36, &off_1F2544630);
  sub_1AF6D80D8(v36, &off_1F2544630, v30, &off_1F25308B8);
  v44 = type metadata accessor for SceneKitAssetSystem();
  sub_1AF6D78B4(v44, &off_1F25470B0, 1, 0);
  v45 = type metadata accessor for TextureDownloadSystem();
  sub_1AF6D78B4(v45, &off_1F25445E0, 1, 0);
  sub_1AF6D80D8(v45, &off_1F25445E0, v36, &off_1F2544630);
  v46 = type metadata accessor for TextureDiscardSystem();
  sub_1AF6D78B4(v46, &off_1F2544590, 1, 0);
  v110 = type metadata accessor for PointCacheGeneratorSystem();
  sub_1AF6D78B4(v110, &off_1F25683A0, 1, 0);
  v47 = type metadata accessor for PrimitiveGeneratorSystem();
  sub_1AF6D78B4(v47, &off_1F252F240, 1, 0);
  v48 = type metadata accessor for SceneFileSystem();
  sub_1AF6D78B4(v48, &off_1F252BFF8, 1, 0);
  v49 = type metadata accessor for MeshFileSystem();
  sub_1AF6D78B4(v49, &off_1F252BFA8, 1, 0);
  sub_1AF6D80D8(v49, &off_1F252BFA8, v31, &off_1F252BF58);
  sub_1AF6D80D8(v49, &off_1F252BFA8, v47, &off_1F252F240);
  if ((v111 & 0x40000000) == 0)
  {
    v50 = type metadata accessor for IBLGeneratorSystem();
    sub_1AF6D78B4(v50, &off_1F252A718, 1, 0);
    sub_1AF6D80D8(v50, &off_1F252A718, v36, &off_1F2544630);
  }

  v51 = type metadata accessor for SDFFileSystem();
  sub_1AF6D78B4(v51, &off_1F252FCF8, 1, 0);
  v52 = type metadata accessor for SDFGeneratorSystem();
  sub_1AF6D78B4(v52, &off_1F252FCA8, 1, 0);
  sub_1AF6D80D8(v52, &off_1F252FCA8, v36, &off_1F2544630);
  v53 = type metadata accessor for VideoCaptureSystem();
  sub_1AF6D78B4(v53, &off_1F256F128, 1, 0);
  sub_1AF6D80D8(v45, &off_1F25445E0, v52, &off_1F252FCA8);
  sub_1AF6D80D8(v31, &off_1F252BF58, v48, &off_1F252BFF8);
  sub_1AF6D80D8(v42, &off_1F253F898, v31, &off_1F252BF58);
  sub_1AF6D80D8(v42, &off_1F253F898, v49, &off_1F252BFA8);
  sub_1AF6D80D8(v42, &off_1F253F898, v47, &off_1F252F240);
  sub_1AF6D80D8(v36, &off_1F2544630, v31, &off_1F252BF58);
  sub_1AF6D80D8(v36, &off_1F2544630, v49, &off_1F252BFA8);
  sub_1AF6D80D8(v110, &off_1F25683A0, v45, &off_1F25445E0);
  sub_1AF6D80D8(v110, &off_1F25683A0, v49, &off_1F252BFA8);
  sub_1AF6D80D8(v110, &off_1F25683A0, v31, &off_1F252BF58);
  LODWORD(v1) = v111;
  if ((v111 & 0x400) == 0)
  {
LABEL_29:
    if ((v1 & 0x8000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_35;
  }

LABEL_19:
  v54 = type metadata accessor for EmitterPrepareRuntime();
  sub_1AF6D78B4(v54, &off_1F2563508, 1, 0);
  active = type metadata accessor for SetActiveSystem();
  sub_1AF6D80D8(v54, &off_1F2563508, active, &off_1F25696D0);
  v56 = type metadata accessor for ParticleSubSpawnAddStateSystem();
  sub_1AF6D78B4(v56, &off_1F2566998, 1, 1);
  v57 = type metadata accessor for EmitterWarmup();
  sub_1AF6D78B4(v57, &off_1F25634B8, 1, 1);
  if ((v1 & 0x80000000) != 0)
  {
    v59 = type metadata accessor for ParticleSubSpawnSystemPostInit();
    sub_1AF6D78B4(v59, &off_1F2566948, 1, 1);
    v58 = type metadata accessor for ParticleSubSpawnSystemPostUpdate();
  }

  else
  {
    v58 = type metadata accessor for ParticleSubSpawnSystem();
  }

  sub_1AF6D78B4(v58, &off_1F2566948, 1, 1);
  v60 = type metadata accessor for TransientPushSystem();
  sub_1AF6D78B4(v60, &off_1F2569A88, 1, 1);
  v61 = type metadata accessor for ForceFieldSystem();
  sub_1AF6D78B4(v61, &off_1F2561108, 1, 1);
  v62 = type metadata accessor for ParticleEmitterTransport();
  sub_1AF6D78B4(v62, &off_1F2563468, 1, 0);
  v63 = type metadata accessor for ParticleFluidSolver2DSolverSystem();
  sub_1AF6D78B4(v63, &off_1F2565CC8, 1, 1);
  v64 = type metadata accessor for EmitterCullingSystem();
  sub_1AF6D78B4(v64, &off_1F2563EB0, 1, 1);
  v65 = type metadata accessor for UpdateWorldAABBSystem();
  sub_1AF6D80D8(v64, &off_1F2563EB0, v65, &off_1F2569AD8);
  v66 = type metadata accessor for ScriptCompilerSystem();
  sub_1AF6D78B4(v66, &off_1F2559760, 1, 0);
  if ((v1 & 8) != 0)
  {
    v67 = type metadata accessor for ShaderFileSystem();
    v68 = type metadata accessor for HeaderFileSystem();
    sub_1AF6D80D8(v67, off_1F2542F38, v68, &off_1F2542288);
    sub_1AF6D80D8(v66, &off_1F2559760, v67, off_1F2542F38);
  }

  v69 = type metadata accessor for GraphScriptRunner();
  sub_1AF6D78B4(v69, &off_1F255D1B0, 1, 1);
  sub_1AF6D80D8(v69, &off_1F255D1B0, v66, &off_1F2559760);
  v70 = type metadata accessor for TriggerScriptRunnerSystem();
  sub_1AF6D78B4(v70, &off_1F255D0D0, 1, 1);
  sub_1AF6D80D8(v70, &off_1F255D0D0, v66, &off_1F2559760);
  v71 = type metadata accessor for KernelScriptReflectionSystem();
  sub_1AF6D78B4(v71, &off_1F2542F88, 1, 0);
  sub_1AF6D80D8(v71, &off_1F2542F88, v66, &off_1F2559760);
  sub_1AF6D78B4(active, &off_1F25696D0, 1, 0);
  sub_1AF6D80D8(active, &off_1F25696D0, v69, &off_1F255D1B0);
  if ((v1 & 0xC0000000) == 0)
  {
    v72 = type metadata accessor for ParticleGPUDownload();
    sub_1AF6D78B4(v72, &off_1F25662D0, 1, 0);
  }

  v73 = type metadata accessor for RendererPostUpdateSystem();
  sub_1AF6D78B4(v73, &off_1F25378B8, 1, 0);
  if ((v1 & 0xC0000000) == 0)
  {
    v74 = type metadata accessor for ParticleGPUDownload();
    sub_1AF6D80D8(v73, &off_1F25378B8, v74, &off_1F25662D0);
  }

  v75 = type metadata accessor for LookAtSystem();
  sub_1AF6D78B4(v75, &off_1F2562180, 1, 1);
  v76 = type metadata accessor for ParticleSortSystem();
  sub_1AF6D78B4(v76, &off_1F2562F30, 1, 0);
  if ((v1 & 0xC0000000) != 0)
  {
    goto LABEL_29;
  }

  v77 = type metadata accessor for PreRenderCameraSystem();
  sub_1AF6D80D8(v76, &off_1F2562F30, v77, &off_1F255F3A8);
  if ((v1 & 0x8000) == 0)
  {
LABEL_30:
    if ((v1 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_46;
  }

LABEL_35:
  if ((v1 & 0x80000000) == 0)
  {
    v78 = type metadata accessor for DrawCallDisposeSystem();
    sub_1AF6D78B4(v78, &off_1F25608A0, 1, 0);
  }

  v79 = type metadata accessor for LODSystem();
  sub_1AF6D78B4(v79, &off_1F2562000, 1, 0);
  if ((v1 & 0x40000000) == 0)
  {
    v80 = type metadata accessor for CullingSystem();
    sub_1AF6D78B4(v80, &off_1F255F7E0, 1, 0);
    v81 = type metadata accessor for UpdateWorldAABBSystem();
    sub_1AF6D80D8(v80, &off_1F255F7E0, v81, &off_1F2569AD8);
  }

  if ((v1 & 0xC0000000) == 0)
  {
    v82 = type metadata accessor for CullingSystem();
    v83 = type metadata accessor for PreRenderCameraSystem();
    sub_1AF6D80D8(v82, &off_1F255F7E0, v83, &off_1F255F3A8);
  }

  v84 = type metadata accessor for PrepareRenderSystem();
  sub_1AF6D78B4(v84, &off_1F255F308, 1, 0);
  v85 = type metadata accessor for GlobalsSystem();
  sub_1AF6D78B4(v85, &off_1F25616F0, 1, 0);
  v86 = type metadata accessor for PrepareLightsSystemVFX1();
  sub_1AF6D80D8(v85, &off_1F25616F0, v86, &off_1F252AD10);
  if ((v1 & 0xC0000000) == 0)
  {
    sub_1AF6D78B4(v86, &off_1F252AD10, 1, 0);
    sub_1AF6D80D8(v86, &off_1F252AD10, v84, &off_1F255F308);
    v87 = type metadata accessor for ParticleSortSystem();
    sub_1AF6D80D8(v87, &off_1F2562F30, v86, &off_1F252AD10);
  }

  v88 = type metadata accessor for MeshRenderSystem();
  sub_1AF6D78B4(v88, &off_1F25625F0, 1, 0);
  if ((v1 & 0x40000000) == 0)
  {
    v89 = type metadata accessor for CullingSystem();
    sub_1AF6D80D8(v88, &off_1F25625F0, v89, &off_1F255F7E0);
  }

  v90 = type metadata accessor for DebugVFXSystem();
  sub_1AF6D78B4(v90, &off_1F255F9C0, 1, 0);
  v91 = type metadata accessor for DebugInfoSystem();
  sub_1AF6D78B4(v91, &off_1F255F960, 1, 0);
  if ((v1 & 0x100000) == 0)
  {
LABEL_31:
    if ((v1 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

LABEL_47:
    v105 = type metadata accessor for CompositeSystem();
    sub_1AF6D78B4(v105, &off_1F2558C78, 1, 0);
    v106 = type metadata accessor for BloomPassSystem();
    sub_1AF6D78B4(v106, &off_1F2558C28, 1, 0);
    v107 = type metadata accessor for LensBlurPassSystem();
    sub_1AF6D78B4(v107, &off_1F2558D18, 1, 0);
    v108 = type metadata accessor for PostProcessSystem();
    sub_1AF6D78B4(v108, &off_1F2558D68, 1, 0);
    sub_1AF6D80D8(v107, &off_1F2558D18, v105, &off_1F2558C78);
    sub_1AF6D80D8(v106, &off_1F2558C28, v107, &off_1F2558D18);
    sub_1AF6D80D8(v108, &off_1F2558D68, v106, &off_1F2558C28);
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_48;
  }

LABEL_46:
  v92 = type metadata accessor for SceneKitSystem();
  sub_1AF6D78B4(v92, &off_1F2547060, 1, 0);
  v93 = type metadata accessor for ShadowSystem();
  sub_1AF6D78B4(v93, &off_1F2530168, 1, 0);
  v94 = type metadata accessor for MeshRenderSystem();
  sub_1AF6D80D8(v93, &off_1F2530168, v94, &off_1F25625F0);
  v95 = type metadata accessor for OpaqueRenderPass();
  sub_1AF6D78B4(v95, &off_1F25625A0, 1, 0);
  v96 = type metadata accessor for TransparentRenderPass();
  sub_1AF6D78B4(v96, &off_1F2562550, 1, 0);
  v97 = type metadata accessor for DebugCullingSystem();
  sub_1AF6D78B4(v97, &off_1F255FA60, 0, 0);
  v98 = type metadata accessor for SkyboxSystem();
  sub_1AF6D78B4(v98, &off_1F25304F0, 1, 0);
  v99 = type metadata accessor for DeferredRendering();
  sub_1AF6D78B4(v99, &off_1F2560658, 1, 0);
  v100 = v1;
  v1 = type metadata accessor for DepthPrepareSystem();
  sub_1AF6D78B4(v1, &off_1F2558CC8, 1, 0);
  sub_1AF6D80D8(v92, &off_1F2547060, v98, &off_1F25304F0);
  v101 = v1;
  LODWORD(v1) = v100;
  sub_1AF6D80D8(v101, &off_1F2558CC8, v99, &off_1F2560658);
  sub_1AF6D80D8(v98, &off_1F25304F0, v99, &off_1F2560658);
  v102 = type metadata accessor for DebugDrawingSystem();
  sub_1AF6D78B4(v102, &off_1F255F910, 1, 0);
  v103 = type metadata accessor for DebugVFXSystem();
  v104 = type metadata accessor for PostProcessSystem();
  sub_1AF6D80D8(v103, &off_1F255F9C0, v104, &off_1F2558D68);
  sub_1AF6D80D8(v97, &off_1F255FA60, v104, &off_1F2558D68);
  sub_1AF6D80D8(v102, &off_1F255F910, v104, &off_1F2558D68);
  if ((v100 & 0x200000) != 0)
  {
    goto LABEL_47;
  }

LABEL_32:
  if ((v1 & 0x80000000) == 0)
  {
    return;
  }

LABEL_48:
  FrameWorldTransformSystem = type metadata accessor for LastFrameWorldTransformSystem();

  sub_1AF6D78B4(FrameWorldTransformSystem, &off_1F2561820, 1, 1);
}

unint64_t sub_1AFBF1614()
{
  result = qword_1ED72F9D8;
  if (!qword_1ED72F9D8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1ED72F9D8);
  }

  return result;
}

void sub_1AFBF165C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1AFBF16C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

ValueMetadata *sub_1AFBF1718(ValueMetadata *a1)
{
  if (a1 != &type metadata for Color || (v2 = &type metadata for TransientOriginColor, !sub_1AF657F68(&type metadata for TransientOriginColor)))
  {
    if (a1 != &type metadata for Scale3 && a1 != &type metadata for Scale1 && a1 != &type metadata for Scale2)
    {
      return 0;
    }

    v2 = &type metadata for TransientOriginScale;
    if (!sub_1AF657F68(&type metadata for TransientOriginScale))
    {
      return 0;
    }
  }

  return v2;
}

void *sub_1AFBF17D4(void *a1)
{
  v1 = a1[11];
  v2 = a1[12];
  v3 = a1[13];
  v4 = a1[1];
  v5 = a1[2];
  v6 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v1, v2, v3, v5);
  v7 = sub_1AF64B110(&type metadata for TransientOriginColor, &off_1F2569988, v1, v2, v3, v5);
  memcpy(&v6[16 * v4[29]], &v7[16 * v4[29]], 16 * (v4[31] - v4[29]));
  v8 = v4[31];
  v9 = 16 * (v4[30] - v8);

  return memcpy(&v7[16 * v8], &v6[16 * v8], v9);
}

uint64_t sub_1AFBF18E8()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v71 = qword_1ED73B840;
  v72 = 0;
  v73 = 2;
  v74 = 0;
  v75 = 2;
  v76 = 0;
  sub_1AF5C8FC4(v30);
  sub_1AF5FD7D8(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ParticleGPU;
  *(inited + 40) = &off_1F252D668;
  sub_1AF5D1EC0(inited);
  sub_1AFBF3108(v30, sub_1AFBF3168);
  swift_setDeallocating();
  v2 = v32;
  *(v0 + 16) = v31;
  *(v0 + 32) = v2;
  *(v0 + 48) = v33;
  sub_1AF5C8FE8(v34);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  *(v3 + 32) = &type metadata for ParticleGPU;
  *(v3 + 40) = &off_1F252D668;
  sub_1AF5D1EC0(v3);
  sub_1AFBF3108(v34, sub_1AFBF31E4);
  swift_setDeallocating();
  v4 = v36;
  *(v0 + 56) = v35;
  *(v0 + 72) = v4;
  *(v0 + 88) = v37;
  sub_1AF5C900C(v38);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  *(v5 + 32) = &type metadata for ParticleGPU;
  *(v5 + 40) = &off_1F252D668;
  sub_1AF5D1EC0(v5);
  sub_1AFBF3108(v38, sub_1AFBF3260);
  swift_setDeallocating();
  v6 = v40;
  v7 = v41;
  v8 = v43;
  v9 = v44;
  v10 = v42 | 8;
  *(v0 + 96) = v39;
  *(v0 + 104) = v6;
  *(v0 + 108) = v7;
  *(v0 + 112) = v10;
  *(v0 + 120) = v8;
  *(v0 + 128) = v9;
  sub_1AF5C900C(v45);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  *(v11 + 32) = &type metadata for ParticleGPU;
  *(v11 + 40) = &off_1F252D668;
  sub_1AF5D1EC0(v11);
  sub_1AFBF3108(v45, sub_1AFBF3260);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v12 = v47;
  *(v0 + 136) = v46;
  *(v0 + 152) = v12;
  *(v0 + 168) = v48;
  sub_1AF5C9030(v49);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  *(v13 + 32) = &type metadata for ParticleGPU;
  *(v13 + 40) = &off_1F252D668;
  sub_1AF5D1EC0(v13);
  sub_1AFBF3108(v49, sub_1AFBF32DC);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v14 = v51;
  v15 = v52;
  v16 = v54;
  v17 = v55;
  v18 = v53 | 8;
  *(v0 + 176) = v50;
  *(v0 + 184) = v14;
  *(v0 + 188) = v15;
  *(v0 + 192) = v18;
  *(v0 + 200) = v16;
  *(v0 + 208) = v17;
  sub_1AF5C9030(v56);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AFE431C0;
  *(v19 + 32) = &type metadata for ParticleGPU;
  *(v19 + 40) = &off_1F252D668;
  sub_1AF5D1EC0(v19);
  sub_1AFBF3108(v56, sub_1AFBF32DC);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v20 = v58;
  *(v0 + 216) = v57;
  *(v0 + 232) = v20;
  *(v0 + 248) = v59;
  sub_1AF5C9054(v60);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1AFE431C0;
  *(v21 + 32) = &type metadata for ParticleGPU;
  *(v21 + 40) = &off_1F252D668;
  sub_1AF5D1EC0(v21);
  sub_1AFBF3108(v60, sub_1AFBF3358);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v22 = v62;
  v23 = v63;
  v24 = v65;
  v25 = v66;
  v26 = v64 | 8;
  *(v0 + 256) = v61;
  *(v0 + 264) = v22;
  *(v0 + 268) = v23;
  *(v0 + 272) = v26;
  *(v0 + 280) = v24;
  *(v0 + 288) = v25;
  sub_1AF5C9054(v67);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1AFE431C0;
  *(v27 + 32) = &type metadata for ParticleGPU;
  *(v27 + 40) = &off_1F252D668;
  sub_1AF5D1EC0(v27);
  sub_1AFBF3108(v67, sub_1AFBF3358);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v28 = v69;
  *(v0 + 296) = v68;
  *(v0 + 312) = v28;
  *(v0 + 328) = v70;
  return v0;
}

uint64_t sub_1AFBF1DC8()
{
  v0 = swift_allocObject();
  sub_1AFBF18E8();
  return v0;
}

void sub_1AFBF1E14(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v326 = *(v1 + 48);
  v325[0] = v3;
  v325[1] = v4;
  sub_1AF6B06C0(a1, v325, 0x200000000, v227);
  v184 = v1;
  if (!*v227)
  {
    goto LABEL_59;
  }

  v190 = v230;
  if (v230 <= 0 || (v189 = *(&v228 + 1)) == 0)
  {
    sub_1AF5D1564(v227);
    goto LABEL_59;
  }

  v188 = *&v227[40];
  v5 = *(&v229 + 1);
  v187 = v229;
  v220 = *(v229 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v6 = *(*(&v229 + 1) + 32);
  v275 = *v227;
  v276 = *&v227[8];
  v277 = *&v227[24];
  *&v271[32] = *&v227[32];
  v272 = v228;
  v273 = v229;
  v274 = v230;
  *v271 = *v227;
  *&v271[16] = *&v227[16];
  sub_1AF5DD298(v271, v320);
  v7 = 0;
  v185 = v6;
  while (2)
  {
    v213 = v7;
    v8 = (v188 + 48 * v7);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    v12 = *(v8 + 2);
    v13 = *(v8 + 3);
    v14 = *(v8 + 4);
    v15 = *(v8 + 5);
    if (v220)
    {
      v16 = *(v15 + 376);

      os_unfair_lock_lock(v16);
      os_unfair_lock_lock(*(v15 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v6);
    v192 = *(v5 + 64);
    v199 = *(v5 + 48);
    v191 = *(v5 + 80);
    v17 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
    *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v17, 8);
    *(v5 + 56) = v17;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 64) = 0;
    LOBYTE(v263) = 1;
    v320[0] = v187;
    v320[1] = v15;
    v206 = v15;
    v320[2] = v5;
    v320[3] = v11;
    v320[4] = (v10 - v9 + v11);
    v320[5] = v190;
    v320[6] = v9;
    v320[7] = v10;
    v320[8] = 0;
    v320[9] = 0;
    v321 = 1;
    v322 = v12;
    v323 = v13;
    v324 = v14;
    sub_1AFBF17D4(v320);
    v18 = *(v5 + 48);
    v19 = *(v5 + 64);
    if (!v19)
    {
      v41 = *(v5 + 56);
      v42 = *(v5 + 32);
      goto LABEL_39;
    }

    for (i = 0; i != v19; ++i)
    {
      v22 = (v18 + 48 * i);
      v23 = *v22;
      v24 = v22[4];
      v25 = *(v5 + 72);
      if (v25)
      {
        v26 = v23 == v25;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        goto LABEL_11;
      }

      v27 = v275;
      if (!v275[11])
      {
        goto LABEL_11;
      }

      v28 = v22[2];
      v29 = v275 + 41;
      v30 = v275[9];
      if (v30 >= 0x10)
      {
        v31 = &v29[v275[8]];
        v32 = v30 >> 4;
        v33 = v275 + 41;
        while (*v31 != v23)
        {
          ++v33;
          v31 += 16;
          if (!--v32)
          {
            goto LABEL_27;
          }
        }

        v34 = v33[v275[10]];
        v35 = v34 > 5;
        v36 = (1 << v34) & 0x23;
        if (v35 || v36 == 0)
        {
LABEL_11:

          v24(v21);

          continue;
        }
      }

LABEL_27:
      if (swift_conformsToProtocol2() && v28)
      {
        if (sub_1AF5FC8D8(v28))
        {
          goto LABEL_11;
        }

        v38 = v27[9];
        if (v38 < 0x10)
        {
          goto LABEL_11;
        }

        v39 = &v29[v27[8]];
        v40 = 16 * (v38 >> 4);
        while (*v39 != v28)
        {
          v39 += 16;
          v40 -= 16;
          if (!v40)
          {
            goto LABEL_11;
          }
        }
      }
    }

    v41 = *(v5 + 56);
    v18 = *(v5 + 48);
    v42 = *(v5 + 32);
    if (*(v5 + 64) >= 1)
    {
      swift_arrayDestroy();
    }

    v6 = v185;
LABEL_39:
    ecs_stack_allocator_deallocate(v42, v18, 48 * v41);
    *(v5 + 48) = v199;
    *(v5 + 64) = v192;
    *(v5 + 80) = v191;
    if (*(*(v5 + 104) + 16))
    {

      sub_1AF62F348(v43, v206);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(v5 + 104);
      if (isUniquelyReferenced_nonNull_native)
      {
        v46 = v45[2];
        v47 = swift_isUniquelyReferenced_nonNull_native();
        *(v5 + 104) = v45;
        if ((v47 & 1) == 0)
        {
          v45 = sub_1AF420EA0(0, v46, 1, v45);
          *(v5 + 104) = v45;
        }

        sub_1AF43A540(0);
        swift_arrayDestroy();
        if (v46)
        {
          v48 = v45[2] - v46;
          memmove(v45 + 4, &v45[9 * v46 + 4], 72 * v48);
          v45[2] = v48;
        }

        *(v5 + 104) = v45;
      }

      else
      {
        v49 = MEMORY[0x1E69E7CC0];
        if (v45[3] >= 2uLL)
        {
          sub_1AF5FD7D8(0, &qword_1ED7269C0, sub_1AF43A540);
          v49 = swift_allocObject();
          v50 = j__malloc_size_0(v49);
          v49[2] = 0;
          v49[3] = 2 * ((v50 - 32) / 72);
        }

        *(v5 + 104) = v49;
      }

      if (*(*(v5 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
      {
        v51 = *(v206 + 232);
        v52 = *(v206 + 256);
        if (v51 == v52)
        {
          v53 = *(v206 + 240);
        }

        else
        {
          sub_1AF6497A0(v52, v51);
          v52 = *(v206 + 232);
          v53 = *(v206 + 240);
          if (v53 == v52)
          {
            v53 = 0;
            v52 = 0;
            *(v206 + 232) = 0;
            *(v206 + 240) = 0;
          }
        }

        *(v206 + 248) = v53;
        *(v206 + 256) = v52;
      }
    }

    ecs_stack_allocator_pop_snapshot(v6);
    if (v220)
    {
      os_unfair_lock_unlock(*(v206 + 344));
      os_unfair_lock_unlock(*(v206 + 376));
    }

    v7 = v213 + 1;
    if (v213 + 1 != v189)
    {
      continue;
    }

    break;
  }

  sub_1AF5D1564(v227);
  sub_1AF5D1564(v227);
  v2 = v184;
LABEL_59:
  v54 = *(v2 + 112);
  v318[0] = *(v2 + 96);
  v318[1] = v54;
  v319 = *(v2 + 128);
  sub_1AF6B06C0(a1, v318, 0x200000000, &v231);
  if (v231)
  {
    if (v238 >= 1)
    {
      v214 = v235;
      if (v235)
      {
        v55 = 0;
        v207 = v234;
        v56 = v237;
        v57 = *(v237 + 32);
        v58 = *(v236 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v278 = v231;
        v279 = v232;
        v280 = v233;
        v193 = v58;
        v200 = v57;
        do
        {
          v59 = (v207 + 48 * v55);
          v60 = *v59;
          v221 = v59[1];
          v61 = *(v59 + 2);
          v62 = *(v59 + 3);
          v64 = *(v59 + 4);
          v63 = *(v59 + 5);
          if (v58)
          {
            v65 = *(v63 + 376);

            os_unfair_lock_lock(v65);
            os_unfair_lock_lock(*(v63 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v57);
          v66 = *(v56 + 64);
          v316[0] = *(v56 + 48);
          v316[1] = v66;
          v317 = *(v56 + 80);
          v67 = *(*(*(*(v63 + 40) + 16) + 32) + 16) + 1;
          *(v56 + 48) = ecs_stack_allocator_allocate(*(v56 + 32), 48 * v67, 8);
          *(v56 + 56) = v67;
          *(v56 + 72) = 0;
          *(v56 + 80) = 0;
          *(v56 + 64) = 0;
          v68 = sub_1AF64B110(&type metadata for Scale1, &off_1F252F788, v61, v62, v64, v56);
          v69 = sub_1AF64B110(&type metadata for TransientOriginScale, &off_1F2569A38, v61, v62, v64, v56);
          if (v61)
          {
            for (; v64; --v64)
            {
              v70 = *v68;
              v68 += 4;
              *&v71 = __PAIR64__(1.0, v70);
              *(&v71 + 1) = COERCE_UNSIGNED_INT(1.0);
              *v69 = v71;
              v69 += 16;
            }
          }

          else if (v60 != v221)
          {
            v72 = v221 - v60;
            v73 = &v69[16 * v60];
            v74 = &v68[4 * v60];
            do
            {
              v75 = *v74;
              v74 += 4;
              *&v76 = __PAIR64__(1.0, v75);
              *(&v76 + 1) = COERCE_UNSIGNED_INT(1.0);
              *v73 = v76;
              v73 += 16;
              --v72;
            }

            while (v72);
          }

          sub_1AF630994(v56, &v278, v316);
          sub_1AF62D29C(v63);
          v57 = v200;
          ecs_stack_allocator_pop_snapshot(v200);
          v58 = v193;
          if (v193)
          {
            os_unfair_lock_unlock(*(v63 + 344));
            os_unfair_lock_unlock(*(v63 + 376));
          }

          ++v55;
        }

        while (v55 != v214);
      }
    }

    sub_1AF5D1564(&v231);
    v2 = v184;
  }

  v77 = *(v2 + 152);
  v314[0] = *(v2 + 136);
  v314[1] = v77;
  v315 = *(v2 + 168);
  sub_1AF6B06C0(a1, v314, 0x200000000, &v239);
  if (v239)
  {
    if (v246 >= 1)
    {
      v215 = v243;
      if (v243)
      {
        v78 = 0;
        v208 = v242;
        v79 = v245;
        v80 = *(v245 + 32);
        v81 = *(v244 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v281 = v239;
        v282 = v240;
        v283 = v241;
        v194 = v81;
        v201 = v80;
        do
        {
          v82 = (v208 + 48 * v78);
          v83 = *v82;
          v222 = v82[1];
          v84 = *(v82 + 2);
          v85 = *(v82 + 3);
          v87 = *(v82 + 4);
          v86 = *(v82 + 5);
          if (v81)
          {
            v88 = *(v86 + 376);

            os_unfair_lock_lock(v88);
            os_unfair_lock_lock(*(v86 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v80);
          v89 = *(v79 + 64);
          v312[0] = *(v79 + 48);
          v312[1] = v89;
          v313 = *(v79 + 80);
          v90 = *(*(*(*(v86 + 40) + 16) + 32) + 16) + 1;
          *(v79 + 48) = ecs_stack_allocator_allocate(*(v79 + 32), 48 * v90, 8);
          *(v79 + 56) = v90;
          *(v79 + 72) = 0;
          *(v79 + 80) = 0;
          *(v79 + 64) = 0;
          v91 = sub_1AF64B110(&type metadata for Scale1, &off_1F252F788, v84, v85, v87, v79);
          v92 = sub_1AF64B110(&type metadata for TransientOriginScale, &off_1F2569A38, v84, v85, v87, v79);
          if (v84)
          {
            for (; v87; --v87)
            {
              v93 = *v92;
              v92 += 16;
              *v91 = v93;
              v91 += 4;
            }
          }

          else if (v83 != v222)
          {
            v94 = v222 - v83;
            v95 = &v92[16 * v83];
            v96 = &v91[4 * v83];
            do
            {
              v97 = *v95;
              v95 += 16;
              *v96 = v97;
              v96 += 4;
              --v94;
            }

            while (v94);
          }

          sub_1AF630994(v79, &v281, v312);
          sub_1AF62D29C(v86);
          v80 = v201;
          ecs_stack_allocator_pop_snapshot(v201);
          v81 = v194;
          if (v194)
          {
            os_unfair_lock_unlock(*(v86 + 344));
            os_unfair_lock_unlock(*(v86 + 376));
          }

          ++v78;
        }

        while (v78 != v215);
      }
    }

    sub_1AF5D1564(&v239);
    v2 = v184;
  }

  v98 = *(v2 + 192);
  v310[0] = *(v2 + 176);
  v310[1] = v98;
  v311 = *(v2 + 208);
  sub_1AF6B06C0(a1, v310, 0x200000000, &v247);
  if (v247)
  {
    if (v254 >= 1)
    {
      v216 = v251;
      if (v251)
      {
        v99 = 0;
        v209 = v250;
        v100 = v253;
        v101 = *(v253 + 32);
        v102 = *(v252 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v284 = v247;
        v285 = v248;
        v286 = v249;
        v195 = v102;
        v202 = v101;
        do
        {
          v103 = (v209 + 48 * v99);
          v104 = *v103;
          v223 = v103[1];
          v105 = *(v103 + 2);
          v106 = *(v103 + 3);
          v108 = *(v103 + 4);
          v107 = *(v103 + 5);
          if (v102)
          {
            v109 = *(v107 + 376);

            os_unfair_lock_lock(v109);
            os_unfair_lock_lock(*(v107 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v101);
          v110 = *(v100 + 64);
          v308[0] = *(v100 + 48);
          v308[1] = v110;
          v309 = *(v100 + 80);
          v111 = *(*(*(*(v107 + 40) + 16) + 32) + 16) + 1;
          *(v100 + 48) = ecs_stack_allocator_allocate(*(v100 + 32), 48 * v111, 8);
          *(v100 + 56) = v111;
          *(v100 + 72) = 0;
          *(v100 + 80) = 0;
          *(v100 + 64) = 0;
          v112 = sub_1AF64B110(&type metadata for Scale2, &off_1F252F838, v105, v106, v108, v100);
          v113 = sub_1AF64B110(&type metadata for TransientOriginScale, &off_1F2569A38, v105, v106, v108, v100);
          if (v105)
          {
            for (; v108; --v108)
            {
              v114 = *v112;
              v112 += 8;
              *&v115 = v114;
              *(&v115 + 1) = 1065353216;
              *v113 = v115;
              v113 += 16;
            }
          }

          else if (v104 != v223)
          {
            v116 = v223 - v104;
            v117 = &v113[16 * v104];
            v118 = &v112[8 * v104];
            do
            {
              v119 = *v118;
              v118 += 8;
              *&v120 = v119;
              *(&v120 + 1) = 1065353216;
              *v117 = v120;
              v117 += 16;
              --v116;
            }

            while (v116);
          }

          sub_1AF630994(v100, &v284, v308);
          sub_1AF62D29C(v107);
          v101 = v202;
          ecs_stack_allocator_pop_snapshot(v202);
          v102 = v195;
          if (v195)
          {
            os_unfair_lock_unlock(*(v107 + 344));
            os_unfair_lock_unlock(*(v107 + 376));
          }

          ++v99;
        }

        while (v99 != v216);
      }
    }

    sub_1AF5D1564(&v247);
    v2 = v184;
  }

  v121 = *(v2 + 232);
  v306[0] = *(v2 + 216);
  v306[1] = v121;
  v307 = *(v2 + 248);
  sub_1AF6B06C0(a1, v306, 0x200000000, &v255);
  if (v255)
  {
    if (v262 >= 1)
    {
      v217 = v259;
      if (v259)
      {
        v122 = 0;
        v210 = v258;
        v123 = v261;
        v124 = *(v261 + 32);
        v125 = *(v260 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v287 = v255;
        v288 = v256;
        v289 = v257;
        v196 = v125;
        v203 = v124;
        do
        {
          v126 = (v210 + 48 * v122);
          v127 = *v126;
          v224 = v126[1];
          v128 = *(v126 + 2);
          v129 = *(v126 + 3);
          v131 = *(v126 + 4);
          v130 = *(v126 + 5);
          if (v125)
          {
            v132 = *(v130 + 376);

            os_unfair_lock_lock(v132);
            os_unfair_lock_lock(*(v130 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v124);
          v133 = *(v123 + 64);
          v304[0] = *(v123 + 48);
          v304[1] = v133;
          v305 = *(v123 + 80);
          v134 = *(*(*(*(v130 + 40) + 16) + 32) + 16) + 1;
          *(v123 + 48) = ecs_stack_allocator_allocate(*(v123 + 32), 48 * v134, 8);
          *(v123 + 56) = v134;
          *(v123 + 72) = 0;
          *(v123 + 80) = 0;
          *(v123 + 64) = 0;
          v135 = sub_1AF64B110(&type metadata for Scale2, &off_1F252F838, v128, v129, v131, v123);
          v136 = sub_1AF64B110(&type metadata for TransientOriginScale, &off_1F2569A38, v128, v129, v131, v123);
          if (v128)
          {
            for (; v131; --v131)
            {
              v137 = *v136;
              v136 += 16;
              *v135 = v137;
              v135 += 8;
            }
          }

          else if (v127 != v224)
          {
            v138 = v224 - v127;
            v139 = &v136[16 * v127];
            v140 = &v135[8 * v127];
            do
            {
              v141 = *v139;
              v139 += 16;
              *v140 = v141;
              v140 += 8;
              --v138;
            }

            while (v138);
          }

          sub_1AF630994(v123, &v287, v304);
          sub_1AF62D29C(v130);
          v124 = v203;
          ecs_stack_allocator_pop_snapshot(v203);
          v125 = v196;
          if (v196)
          {
            os_unfair_lock_unlock(*(v130 + 344));
            os_unfair_lock_unlock(*(v130 + 376));
          }

          ++v122;
        }

        while (v122 != v217);
      }
    }

    sub_1AF5D1564(&v255);
    v2 = v184;
  }

  v142 = *(v2 + 272);
  v302[0] = *(v2 + 256);
  v302[1] = v142;
  v303 = *(v2 + 288);
  sub_1AF6B06C0(a1, v302, 0x200000000, &v263);
  if (v263)
  {
    if (v270 >= 1)
    {
      v218 = v267;
      if (v267)
      {
        v143 = 0;
        v211 = v266;
        v144 = v269;
        v145 = *(v269 + 32);
        v146 = *(v268 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v290 = v263;
        v291 = v264;
        v292 = v265;
        v197 = v146;
        v204 = v145;
        do
        {
          v147 = (v211 + 48 * v143);
          v148 = *v147;
          v225 = v147[1];
          v149 = *(v147 + 2);
          v150 = *(v147 + 3);
          v152 = *(v147 + 4);
          v151 = *(v147 + 5);
          if (v146)
          {
            v153 = *(v151 + 376);

            os_unfair_lock_lock(v153);
            os_unfair_lock_lock(*(v151 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v145);
          v154 = *(v144 + 64);
          v300[0] = *(v144 + 48);
          v300[1] = v154;
          v301 = *(v144 + 80);
          v155 = *(*(*(*(v151 + 40) + 16) + 32) + 16) + 1;
          *(v144 + 48) = ecs_stack_allocator_allocate(*(v144 + 32), 48 * v155, 8);
          *(v144 + 56) = v155;
          *(v144 + 72) = 0;
          *(v144 + 80) = 0;
          *(v144 + 64) = 0;
          v156 = sub_1AF64B110(&type metadata for Scale3, &off_1F252F998, v149, v150, v152, v144);
          v157 = sub_1AF64B110(&type metadata for TransientOriginScale, &off_1F2569A38, v149, v150, v152, v144);
          if (v149)
          {
            for (; v152; --v152)
            {
              v158 = *v156;
              v156 += 16;
              *v157 = v158;
              v157 += 16;
            }
          }

          else if (v148 != v225)
          {
            v159 = v225 - v148;
            v160 = &v157[16 * v148];
            v161 = &v156[16 * v148];
            do
            {
              v162 = *v161;
              v161 += 16;
              *v160 = v162;
              v160 += 16;
              --v159;
            }

            while (v159);
          }

          sub_1AF630994(v144, &v290, v300);
          sub_1AF62D29C(v151);
          v145 = v204;
          ecs_stack_allocator_pop_snapshot(v204);
          v146 = v197;
          if (v197)
          {
            os_unfair_lock_unlock(*(v151 + 344));
            os_unfair_lock_unlock(*(v151 + 376));
          }

          ++v143;
        }

        while (v143 != v218);
      }
    }

    sub_1AF5D1564(&v263);
    v2 = v184;
  }

  v299 = *(v2 + 328);
  v163 = *(v2 + 312);
  v298[0] = *(v2 + 296);
  v298[1] = v163;
  sub_1AF6B06C0(a1, v298, 0x200000000, v271);
  if (*v271)
  {
    if (v274 >= 1)
    {
      v219 = *(&v272 + 1);
      if (*(&v272 + 1))
      {
        v164 = 0;
        v212 = *&v271[40];
        v165 = *(&v273 + 1);
        v166 = *(*(&v273 + 1) + 32);
        v167 = *(v273 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v293 = *v271;
        v294 = *&v271[8];
        v295 = *&v271[24];
        v198 = v167;
        v205 = v166;
        do
        {
          v168 = (v212 + 48 * v164);
          v169 = *v168;
          v226 = v168[1];
          v170 = *(v168 + 2);
          v171 = *(v168 + 3);
          v173 = *(v168 + 4);
          v172 = *(v168 + 5);
          if (v167)
          {
            v174 = *(v172 + 376);

            os_unfair_lock_lock(v174);
            os_unfair_lock_lock(*(v172 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v166);
          v175 = *(v165 + 64);
          v296[0] = *(v165 + 48);
          v296[1] = v175;
          v297 = *(v165 + 80);
          v176 = *(*(*(*(v172 + 40) + 16) + 32) + 16) + 1;
          *(v165 + 48) = ecs_stack_allocator_allocate(*(v165 + 32), 48 * v176, 8);
          *(v165 + 56) = v176;
          *(v165 + 72) = 0;
          *(v165 + 80) = 0;
          *(v165 + 64) = 0;
          v177 = sub_1AF64B110(&type metadata for Scale3, &off_1F252F998, v170, v171, v173, v165);
          v178 = sub_1AF64B110(&type metadata for TransientOriginScale, &off_1F2569A38, v170, v171, v173, v165);
          if (v170)
          {
            for (; v173; --v173)
            {
              v179 = *v178;
              v178 += 16;
              *v177 = v179;
              v177 += 16;
            }
          }

          else if (v169 != v226)
          {
            v180 = v226 - v169;
            v181 = &v178[16 * v169];
            v182 = &v177[16 * v169];
            do
            {
              v183 = *v181;
              v181 += 16;
              *v182 = v183;
              v182 += 16;
              --v180;
            }

            while (v180);
          }

          sub_1AF630994(v165, &v293, v296);
          sub_1AF62D29C(v172);
          v166 = v205;
          ecs_stack_allocator_pop_snapshot(v205);
          v167 = v198;
          if (v198)
          {
            os_unfair_lock_unlock(*(v172 + 344));
            os_unfair_lock_unlock(*(v172 + 376));
          }

          ++v164;
        }

        while (v164 != v219);
      }
    }

    sub_1AF5D1564(v271);
  }
}